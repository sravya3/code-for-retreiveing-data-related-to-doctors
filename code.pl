=begin
author:sravya machineni
version:perl 
=cut
#code for rating
$file='C:\\Users\\user\\Desktop\\data.txt';
open(INFO,$file);
#to store file contents in array
@s=<INFO>;
do{$input=<>;
chomp($input);}
while($input>5);
foreach(@s){
	#split the string into array
	@k=split(",",$_);
	
	if($k[$#k] == $input){
		print @k;
		
	}
}
#code for other fields
$file='C:\\Users\\user\\Desktop\\data.txt';
open(INFO,$file);
@s=<INFO>;
do{$input=<>;
chomp($input);
@ip=split("",$input);}
while($ip[0] eq '&');
foreach(@s){
	@k=split(",",$_);
	#print $k[$#k];
	for($i=0;$i<=$#k;$i++){
	if($k[$i] eq $input){
		print @k;
		break;
	}
}
}