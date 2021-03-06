// This file is part of the "jQuery.Syntax" project, and is distributed under the MIT License.
// Copyright (c) 2011 Samuel G. D. Williams. <http://www.oriontransfer.co.nz>


Syntax.lib.rubyStyleFunction = {pattern:/(?:def\s+|\.)([a-z_][a-z0-9_]+)/gi,matches:Syntax.extractMatches({klass:'function'})};
Syntax.lib.rubyStyleSymbol = {pattern:/([:]?):\w+/g,klass:'constant',matches:function(match, expr) {
    if (match[1] != '')return[];
    return[new Syntax.Match(match.index, match[0].length, expr, match[0])];
}};
Syntax.register('ruby', function(brush) {
    var keywords = ["alias","and","begin","break","case","class","def","define_method","defined?","do","else","elsif","end","ensure","false","for","if","in","module","next","not","or","raise","redo","rescue","retry","return","then","throw","undef","unless","until","when","while","yield","block_given?"];
    var operators = ["+","*","/","-","&","|","~","!","%","<","=",">"];
    var values = ["self","super","true","false","nil"];
    var access = ["private","protected","public"];
    brush.push(access, {klass:'access'});
    brush.push(values, {klass:'constant'});
    brush.push({pattern:/(\%[\S])(\{[\s\S]*?\})/g,matches:Syntax.extractMatches({klass:'function'}, {klass:'constant'})});
    brush.push(Syntax.lib.perlStyleRegularExpressions);
    brush.push({pattern:/(@+|\$)[\w]+/g,klass:'variable'});
    brush.push(Syntax.lib.camelCaseType);
    brush.push(keywords, {klass:'keyword'});
    brush.push(operators, {klass:'operator'});
    brush.push(Syntax.lib.rubyStyleSymbol);
    brush.push(Syntax.lib.perlStyleComment);
    brush.push(Syntax.lib.webLink);
    brush.push(Syntax.lib.singleQuotedString);
    brush.push(Syntax.lib.doubleQuotedString);
    brush.push(Syntax.lib.stringEscape);
    brush.push(Syntax.lib.decimalNumber);
    brush.push(Syntax.lib.hexNumber);
    brush.push(Syntax.lib.rubyStyleFunction);
    brush.push(Syntax.lib.cStyleFunction);
});
