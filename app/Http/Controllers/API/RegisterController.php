<?php
namespace App\Http\Controllers\API;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Controllers\API\BaseController as BaseController;
use App\User;
use Illuminate\Support\Facades\Auth;
use Validator;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Session;

class RegisterController extends BaseController
{
  public function register(Request $request)
  {
    $validator = Validator::make($request->all(), [
        'name' => 'required',
        'email' => 'required|email',
        'password' => 'required',
        'c_password' => 'required|same:password',
    ]);

    if($validator->fails()){
        return $this->sendError('Validation Error.', $validator->errors());       
    }

    $input = $request->all();
    $input['password'] = bcrypt($input['password']);
    $user = User::create($input);
    $success['token'] =  $user->createToken('MyApp')->accessToken;
    $success['name'] =  $user->name;

    return $this->sendResponse($success, 'User register successfully.');
  }

  public function login(Request $request)
  {
    if(Auth::attempt(['email' => $request->email, 'password' => $request->password])){ 
        $user = Auth::user();
        $serializedUser = serialize($user);
        Session::put('user', $serializedUser);  
        $success['token'] =  $user->createToken('MyApp')->accessToken; 
        $success['name'] =  $user->name;
        $success['role_id'] = $user->role_id;
        return $this->sendResponse($success, 'User login successfully.');
    } 
    else{ 
        return $this->sendError('Unauthorised.', ['error'=>'Unauthorised']);
    }
  }

  public function getAll(){
    $users = User::all();

    $success =  $users;
    return $this->sendResponse($success, '');
  }

  public function createFile(Request $request)
  {
    // Retrieve the 'userData' from the AJAX request data
    $userData = $request->input('userData');

    // Generate a unique filename for the file
    $filename = "user ". date("d-m-Y"). '.csv';

    // Create a CSV string from the 'userData'
    $csv = "ID,Name,Email,Created At,Updated At\n";

    foreach ($userData as $user) {
        $csv .= "{$user['id']},{$user['name']},{$user['email']},{$user['created_at']},{$user['updated_at']}\n";
    }

    // Store the CSV content in the storage path
    $filePath = 'public/files/' . $filename;

    // Check if the file exists in storage
    if (Storage::exists($filePath)) {
      // Get the file's absolute path
      $absolutePath = Storage::path($filePath);

      // Return a response with the file download URL
      return response()->json([
        'message' => 'File already exists',
        'fileDownloadUrl' => asset('storage/files/' . $filename),
      ]);
    } else {
      Storage::put($filePath, $csv);

      // Return a response with the file download URL
      return response()->json([
        'message' => 'File created',
        'fileDownloadUrl' => asset('storage/files/' . $filename),
      ]);
    }

    // Handle the case where the file couldn't be created
    return response()->json(['error' => 'Failed to generate the file'], 500);
  }
}