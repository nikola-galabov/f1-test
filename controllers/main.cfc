component accessors=true {
	property questionService;

    function default( struct rc ) {
		rc.qQuestions = variables.questionService.getAll();
		return rc.qQuestions;
    }
}