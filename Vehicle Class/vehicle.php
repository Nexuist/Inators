<?php
class Vehicle {
  public $name = "Unnamed";

	public $doors = 4;
	public $gates = 1;

	public $mpg = 25;
	public $odometer = 0;
	public $speed = 0;
	public $maxSpeed = 120;
	public $fuel = 100;
	public $maxFuel = 100;

	public $wipers = false;
	public $lights = false;

	// Usable functions
	public function refuel($fuel = 100) {
		$this->fuel += $fuel;
		if ($this->fuel > $this->maxFuel) {
			// Overflow!
			$this->fuel = $this->maxFuel;
		}
		echo "I have now refueled to $this->fuel gallons.<br>";
		return $this->fuel;
	}

	public function openClose($type = "door", $num = 1, $state = true) {
		switch ($type) {
			case "door":
				$array = $this->doors;
				$this->doors[$num] = $state;
				break;
			case "gate":
				$array = $this->gates;
				break;
		}
		$array[$num] = $state;
		echo "My #$num ", ($type == "door" ? "door" : "loading gate"), " is now ", ($state = true ? "open." : "closed."), "<br>";
	}

	public function onOff($utility = "lights", $state = true) {
		switch($utility) {
			case "lights":
				$this->lights = $state;
				break;
			case "wipers":
				$this->wipers = $state;
				break;
		}
		echo "My ". ($utility == "lights" ? "lights" : "windshield wipers")." are now ", ($state = true ? "on." : "off."), "<br>";
	}

	public function drive($changeInSpeed = 0, $hours = 1) {
		// You can't drive negative MPH
		$newSpeed = abs($this->speed + $changeInSpeed);
		// d = rt
		$miles = $newSpeed * $hours;
		$gallonsUsed = $miles / $this->mpg;
		$gallonsLeft = $this->fuel - $gallonsUsed;
		if ($gallonsLeft < 0) {
			// Not enough fuel
			echo "I don't have enough fuel to drive $miles miles.<br>";
			return 0;
		}
		else {
			// Enough fuel, so apply changes
			$this->speed = $newSpeed;
			$this->fuel = $gallonsLeft;
			$this->odometer += $miles;
			echo "I just drove $miles miles in $hours hours at $this->speed miles per hour.<br>";
			echo "I have $this->fuel gallons remaining.<br>";
			return $miles;
		}
	}
	// Construction functions
	private function instantiateArrays ($num) {
		$list = array();
		// Turn the number of doors/gates into an array
		for ($i=0; $i<=$num; $i++) {
			// Key contains which number door/gate, value contains if the door/gate is open or not
			$list[] = false;
		}
		return $list;
	}

	public function __construct() {
			$doors = $this->doors;
			$gates = $this->gates;
			// Prepare for instantiateArrays()
			$this->doors = array();
			$this->gates = array();
			// Turn into arrays
			$this->doors = $this->instantiateArrays($doors);
			$this->gates = $this->instantiateArrays($gates);
			echo "Vehicle instantiated.<br>";

	}
}

class Ford extends Vehicle {

	public function __construct() {
		$this->name = "Ford F150";
		$this->doors = 2;
		$this->gates = 1;
		$this->mpg =  20;
		$this->odometer = 50286;
		$this->maxSpeed = 90;
		parent::__construct();
	}
}
// Testing
$car = new Ford();
$car->drive(50,2);
$car->drive(0,16);
$car->drive(25,18);
$car->refuel(40);
$car->drive(25,18);
echo "It has started raining.<br>";
$car->onOff("lights", true);
$car->onOff("wipers", true);
$car->drive(0,5);
?>
