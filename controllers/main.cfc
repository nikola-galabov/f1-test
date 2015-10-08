component accessors=true {
	property questionService;
	
	function init( fw ) {
   		variables.fw = arguments.fw;
   		return this;
	}

    function default( struct rc ) {
		rc.qQuestions = variables.questionService.getAll();
		return rc.qQuestions;
    }

    function create( struct rc ) {
		rc.qQuestions = variables.questionService.create(title = rc.title, text = rc.content);
		fw.redirect('main.default');
    }
}