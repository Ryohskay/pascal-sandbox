program Constant;
{$mode fpc}
{$WriteableConst OFF}

uses SysUtils;

const
	Thousand = 1000;
	Name = 'Ryohskay';

var
	item: Integer = 10;

resourcestring
	AuthorName = 'Ryohskay N.';

begin
	WriteLn(Thousand);
	WriteLn(IntToStr(item));
end.
