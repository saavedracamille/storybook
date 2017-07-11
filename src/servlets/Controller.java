package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

import controller.storyGenerationBody.BodyController;
import controller.storyGenerationBody.GenerateBody;
import controller.storyGenerationConclusion.ConclusionController;
import controller.storyGenerationConclusion.GenerateConclusion;
import controller.storyGenerationIntro.GenerateIntro;
import controller.storyGenerationIntro.IntroObjectInit;
import jsonParser.AboutMeJSON;
import jsonParser.EventsJSON;
import jsonParser.LikesJSON;
import jsonParser.PostsJSON;
import simplenlg.features.Feature;
import simplenlg.features.Tense;
import simplenlg.framework.NLGFactory;
import simplenlg.lexicon.Lexicon;
import simplenlg.phrasespec.SPhraseSpec;
import simplenlg.realiser.english.Realiser;

@WebServlet(urlPatterns = { "/Controller","/StartServlet", "/ToDB", "/OutputPage"})
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String wholeStory = "";
     
    public Controller() {
        super();
    }
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, ParseException {
		response.setContentType("text/html;charset=UTF-8");

		String path = request.getServletPath();

		if (path.equals("/StartServlet")) {
			IntroObjectInit ic = new IntroObjectInit();
			ConclusionController cc = new ConclusionController();
			
			System.out.println(ic.generateIntroduction());
			System.out.println(cc.generateConclusion());
			
			BodyController bc = new BodyController();
			System.out.println(bc.generateBody());
			
			//request.getRequestDispatcher("startPage.jsp").forward(request, response);
		}
		else if(path.equals("/ToDB")){
			String strAboutData = request.getParameter("about");
			String strFamilyData = request.getParameter("family");
			String strEventData = request.getParameter("events");
			String strLikeData = request.getParameter("likes");
			String strPostData = request.getParameter("posts");
			JSONParser parser = new JSONParser();
			
			try {
				//POSTS JSON
				JSONArray eventArray = (JSONArray) parser.parse(strPostData);
				System.out.println("EVENT ARRAY: " + eventArray);
				PostsJSON pj = new PostsJSON(eventArray);
				
				//ABOUT ME JSON
				JSONObject about = new JSONObject((JSONObject) parser.parse(strAboutData));
				JSONArray familyArray = (JSONArray) parser.parse(strFamilyData);
				System.out.println("ABOUT: " + about);
				System.out.println("FAMILY ARRAY: " + familyArray);
				AboutMeJSON amj = new AboutMeJSON(about, familyArray);
				
				//LIKES JSON
				JSONArray likesArray = (JSONArray) parser.parse(strLikeData);
				System.out.println("LIKES ARRAY: " + likesArray);
				LikesJSON lj = new LikesJSON(likesArray);
				
				//EVENTS JSON
				JSONArray eventsData = (JSONArray) parser.parse(strEventData);
				System.out.println("EVENTS ARRAY: " + eventsData);
				EventsJSON ej = new EventsJSON(eventsData);
				
//				GenerateIntro gi = new GenerateIntro();
//				wholeStory += gi.getIntro() + "<br />";
//				
//				GenerateBody gb = new GenerateBody();
//				wholeStory += gb.getBody() + "<br />";
//				
//				GenerateConclusion gc = new GenerateConclusion();
//				wholeStory += gc.getConclusion() + "<br />";
				
				IntroObjectInit ic = new IntroObjectInit();
				ConclusionController cc = new ConclusionController();
				
				System.out.println(ic.generateIntroduction());
				System.out.println(cc.generateConclusion());
				
				BodyController bc = new BodyController();
				bc.generateBody();
			} catch (ParseException e) {
				e.printStackTrace();
			}
		} else if(path.equals("/OutputPage")){
			System.out.println("output");
			HttpSession session = request.getSession();
			session.setAttribute("story", wholeStory);
			request.getRequestDispatcher("outputPage.jsp").forward(request, response);
		}
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			processRequest(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			processRequest(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
