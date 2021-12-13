pragma solidity >=0.4.22 <0.9.0;


contract TodoList {
	uint public taskCount = 0;

	struct Task {
		uint id;
		string content;
		bool completed;
	}

	// mapping is used to put structs in storage
	mapping(uint => Task) public tasks;

	constructor() public{
		createTask("see laju");
	}

	function createTask(string memory _content) public {
		taskCount ++;
		tasks[taskCount] = Task(taskCount, _content, false);
	}
}