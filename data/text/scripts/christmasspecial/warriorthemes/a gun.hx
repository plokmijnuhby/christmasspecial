//Written by Black Widow of the Wibi system.
var allsmalleqs = args[0];

shuffle(allsmalleqs);

var eq = null;

while(eq == null) {
	var testeq = new elements.Equipment(allsmalleqs.pop());
	if(
		(
			testeq.countdown > 0 && testeq.countdown <= 6) &&
			testeq.usesleft == -1 || testeq.usesleft > 1
		) && (
			testeq.script.indexOf('attack(') != -1 &&
			testeq.script.split('attack(-').join('').indexOf('attack(') != -1
		) || (
			testeq.script.indexOf('drain(') != -1
		)
	) {
		eq = testeq;
	}
}

return eq;