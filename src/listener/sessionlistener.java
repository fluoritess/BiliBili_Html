package listener;

import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

public class sessionlistener implements HttpSessionListener {

	@Override
	public void sessionCreated(HttpSessionEvent arg0) {
		// TODO Auto-generated method stub
		System.out.println("session is created...........");
	}

	@Override
	public void sessionDestroyed(HttpSessionEvent arg0) {
		// TODO Auto-generated method stub
		System.out.println("session is destoyed..........");
	}

}
