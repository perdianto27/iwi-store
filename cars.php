<?php

class Car {

  protected $brand;
  protected $model;

  public function __construct($brand, $model){
    $this->brand = $brand;
    $this->model = $model;
  }

  public function startEngine(){
    return "Engine started!";
  }

}

class SportsCar extends Car {
  
  public function turboMode(){
    return "Turbo mode activated!";
  }

}


$sportsCar = new SportsCar("Lamborghini", "Huracán LP610-4");
echo $sportsCar->startEngine(); // Memanggil metode startEngine() dari kelas Car
echo "<br>";
echo $sportsCar->turboMode(); // Memanggil metode turboMode() dari kelas SportsCar

?>