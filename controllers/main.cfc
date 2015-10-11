component accessors=true {
	property questionService;
	
	function init(fw) {
   		variables.fw = arguments.fw;
   		return this;
	}

	function before() {
		if(!structKeyExists(SESSION, "user")) {
			fw.redirect('user.login');
		}
	}
	
    function default(struct rc) {
    	param name="rc.userId" default="";
		rc.qQuestions = variables.questionService.getAll(userId = rc.userId);
		return rc.qQuestions;
    }

    function create(struct rc) {
		rc.qQuestions = variables.questionService.create(title = rc.title, text = rc.content);
		fw.redirect('main.default');
    }

    function view(struct rc) {
    	rc.qQuestion = variables.questionService.getQuestion(questionId = rc.questionId);
    	return rc.qQuestion;
    }
}