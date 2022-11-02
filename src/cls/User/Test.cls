Class User.Test Extends %Persistent [ ClassType = persistent ]
{

/* nothing got to do with columnar db. Just testing a new capability, list projection as an array */

/*
NYTAXI>s x=##class(Test).%New() d x.lparams.Insert("aaaa"),x.lparams.Insert("bbbb"),x.%Save()
NYTAXI>zw ^User.TestD
^User.TestD=1
^User.TestD(1)=$lb("")
^User.TestD(1,"lparams")=2
^User.TestD(1,"lparams",1)="aaaa"
^User.TestD(1,"lparams",2)="bbbb"

select * from SQLUser.Test_lparams

Test    ID      element_key     lparams
1       1||1    1       aaaa
1       1||2    2       bbbb

*/
Property lparams As list Of %String(STORAGEDEFAULT = "array");

Storage Default
{
<Data name="TestDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
</Data>
<Data name="lparams">
<Attribute>lparams</Attribute>
<Structure>subnode</Structure>
<Subscript>"lparams"</Subscript>
</Data>
<DataLocation>^User.TestD</DataLocation>
<DefaultData>TestDefaultData</DefaultData>
<IdLocation>^User.TestD</IdLocation>
<IndexLocation>^User.TestI</IndexLocation>
<StreamLocation>^User.TestS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
