<?php

class Person {
  private $name;
  private $age;

  public function __construct($name, $age) {
      $this->name = $name;
      $this->age = $age;
  }

  public function introduce() {
      echo "Hello, my name is " . $this->name . " and I am " . $this->age . " years old.";
  }
}

// Contoh penggunaan kelas Person
$person = new Person("Perdi", 27);
$person->introduce(); // Output: Hello, my name is Perdi and I am 27 years old.

?>