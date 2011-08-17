// This file is part of the "jQuery.Syntax" project, and is distributed under the MIT License.
// Copyright (c) 2011 Samuel G. D. Williams. <http://www.oriontransfer.co.nz>


Syntax.register('python', function(brush) {
    var keywords = ["and","as","assert","break","class","continue","def","del","elif","else","except","exec","finally","for","from","global","if","import","in","is","lambda","not","or","pass","print","raise","return","try","while","with","yield"];
    var operators = ["!=","%","%=","&","&=","(",")","*","**","**=","*=","+","+=",",","-","-=",".","/","//","//=","/=",":",";","<","<<","<<=","<=","<>","=","==",">",">=",">>",">>=","@","[","]","^","^=","`","`","{","|","|=","}","~"];
    var builtinFunctions = ["abs","all","any","basestring","bin","bool","callable","chr","classmethod","cmp","compile","complex","delattr","dict","dir","divmod","enumerate","eval","execfile","file","filter","float","format","frozenset","getattr","globals","hasattr","hash","help","hex","id","input","int","isinstance","issubclass","iter","len","list","locals","long","map","max","min","next","object","oct","open","ord","pow","print","property","range","raw_input","reduce","reload","repr","reversed","round","set","setattr","slice","sorted","staticmethod","str","sum","super","tuple","type","type","unichr","unicode","vars","xrange","zip","__import__","apply","buffer","coerce","intern"];
    var values = ["self","True","False","None"];
    brush.push({pattern:/^\s*@\w+/gm,klass:'decorator'});
    brush.push(values, {klass:'constant'});
    brush.push(keywords, {klass:'keyword'});
    brush.push(operators, {klass:'operator'});
    brush.push(builtinFunctions, {klass:'builtin'});
    brush.push(Syntax.lib.camelCaseType);
    brush.push(Syntax.lib.cStyleFunction);
    brush.push(Syntax.lib.perlStyleComment);
    brush.push({pattern:/(['\"]{3})([^\1])*?\1/gm,klass:'comment'});
    brush.push(Syntax.lib.webLink);
    brush.push(Syntax.lib.singleQuotedString);
    brush.push(Syntax.lib.doubleQuotedString);
    brush.push(Syntax.lib.stringEscape);
    brush.push(Syntax.lib.decimalNumber);
    brush.push(Syntax.lib.hexNumber);
    brush.processes['function'] = Syntax.lib.webLinkProcess("http://docs.python.org/search.html?q=");
    brush.processes['type'] = Syntax.lib.webLinkProcess("http://docs.python.org/search.html?q=");
    brush.processes['builtin'] = Syntax.lib.webLinkProcess("http://docs.python.org/search.html?q=");
});
