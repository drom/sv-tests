/*
:name: named_event_wait
:description: Wait for a named event
:tags: 15.5
:top_module: top
*/



module inner();
	initial 
		@top.e;
endmodule


module top();

event e;

initial begin
	@ e;
end

endmodule

class foo;

	event e;
	
	task wait_e();
		@e;
	endtask;

endclass

