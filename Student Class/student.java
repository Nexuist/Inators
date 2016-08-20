//********************************************************************
//  Student.java
//
//  Represents a college student.
//********************************************************************
import java.util.ArrayList;

public class Student {

	private String firstName, lastName;
	private Address homeAddress, schoolAddress;
	private ArrayList<Double> testScores;

	//-----------------------------------------------------------------
	//  Constructor: Sets up this student with the specified values.
	//-----------------------------------------------------------------
	public Student(String first, String last, Address home, Address school) {
		firstName = first;
		lastName = last;
		homeAddress = home;
		schoolAddress = school;
    	testScores = new ArrayList<Double>(3);
		testScores.add(0d);
    	testScores.add(0d);
    	testScores.add(0d);
	}

  public Student(String first, String last, Address home, Address school, double testScore1, double testScore2, double testScore3) {
    this(first, last, home, school);
    setTestScore(1, testScore1);
    setTestScore(2, testScore2);
    setTestScore(3, testScore3);
  }

  public double getTestScore(int testNumber) {
  	try {
      return testScores.get(testNumber - 1);
    }
    catch (Exception e) {
      e.printStackTrace();
    }
    return 0;
  }

  public void setTestScore(int testNumber, double score) {
    try {
      testScores.set(testNumber - 1, score);
    }
    catch (Exception e) {
      e.printStackTrace();
    }
  }

  public double average() {
    double sum = 0;
    for (Double score: testScores) {
      sum += score;
    }
    return sum / testScores.size();
  }

	//-----------------------------------------------------------------
	//  Returns a string description of this Student object.
	//-----------------------------------------------------------------
	public String toString() {
		String result;
		result = firstName + " " + lastName + "\n";
		result += "Home Address:\n" + homeAddress + "\n";
		result += "School Address:\n" + schoolAddress + "\n";
    	result += "Test Scores:\n" + testScores;
		return result;
	}
}
