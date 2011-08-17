// This file is part of the "jQuery.Syntax" project, and is distributed under the MIT License.
// Copyright (c) 2011 Samuel G. D. Williams. <http://www.oriontransfer.co.nz>


Syntax.register('haskell', function(brush) {
    var keywords = ["as","case","of","class","data","data family","data instance","default","deriving","deriving instance","do","forall","foreign","hiding","if","then","else","import","infix","infixl","infixr","instance","let","in","mdo","module","newtype","proc","qualified","rec","type","type family","type instance","where"];
    var operators = ["`","|","\\","-","-<","-<<","->","*","?","??","#","<-","@","!","::","_","~",">",";","{","}"];
    var values = ["True","False"];
    brush.push(values, {klass:'constant'});
    brush.push(keywords, {klass:'keyword'});
    brush.push(operators, {klass:'operator'});
    brush.push(Syntax.lib.camelCaseType);
    brush.push({pattern:/\-\-.*$/gm,klass:'comment',allow:['href']});
    brush.push({pattern:/\{\-[\s\S]*?\-\}/gm,klass:'comment',allow:['href']});
    brush.push(Syntax.lib.webLink);
    brush.push(Syntax.lib.decimalNumber);
    brush.push(Syntax.lib.hexNumber);
    brush.push(Syntax.lib.singleQuotedString);
    brush.push(Syntax.lib.doubleQuotedString);
    brush.push(Syntax.lib.stringEscape);
});
