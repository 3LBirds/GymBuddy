Blog.controller('PanelController', function ($scope, GlobalService, PostService,StudentService, posts,student,studentlist) {
    
    
    
    $scope.posts = posts;
    
    $scope.globals = GlobalService;
    $scope.course_description = '';
    $scope.student = student;
   
    $scope.studentList=studentlist;
    $scope.formatStudent=[""];
    $scope.favoriteStudent=[""];
    $scope.temp={};
    
    $scope.formatStudentList= function(){
    	
    	for(var i in $scope.studentList)
    	{	
    		if($scope.studentList[i].u_name != $scope.student.u_name)
    		{
    		$scope.temp.u_name=$scope.studentList[i].u_name;
    		$scope.temp.f_name=$scope.studentList[i].f_name;
    		$scope.temp.l_name=$scope.studentList[i].l_name;
    		$scope.temp.email=$scope.studentList[i].email;
    		$scope.temp.prefs=$scope.studentList[i].prefs;
    		$scope.formatStudent.push($scope.temp);
    		$scope.temp={};
    		}
	   	}	
    	
    }
    
    $scope.formatStudentList();
    $scope.button_selected = "btn btn-default ";
    $scope.Days = ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday','Sunday'];
    $scope.dropProceed = true;
    
    
    
   
    //options for modals
    $scope.setSelected = function() {
       if ($scope.lastSelected) {
         $scope.lastSelected.selected = '';
       }
       this.selected = "success";
       $scope.lastSelected = this;
       $scope.course_description = this.post.c_description;
       console.log("show", arguments, this);
    }
    
   
    $scope.setButtonSelected = function() {
    	if ($scope.lastButtonSelected) {
         $scope.lastButtonSelected.button_selected = "btn btn-default";
       }
       this.button_selected = "btn btn-success";
       $scope.lastButtonSelected = this;
       $scope.chosenDay= this.day;
       
       
    }
    
    $scope.dropSuccessHandler = function(obj,$event,array){
    		
    		if(array.length!=0)
    	{		
    		if(array.length > 1)
    		{
				$scope.dropProceed = true;
				array.splice(obj.$index,1);

			   }
			if(array.length ==1)
				$scope.dropProceed = false;	
		}
		};
		
	$scope.onDrop = function($event,$data,array){
			
			if(array.length==1)
				$scope.dropProceed = true;
			if($scope.dropProceed)
				array.push($data);
			
	};
    
});