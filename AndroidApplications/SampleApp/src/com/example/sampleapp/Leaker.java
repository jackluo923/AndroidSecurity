package SampleApp.src.com.example.sampleapp;

public abstract class Leaker {
	abstract public void leak();
	
	public final String getName() {
		return "LeakerClass";
	}
}
