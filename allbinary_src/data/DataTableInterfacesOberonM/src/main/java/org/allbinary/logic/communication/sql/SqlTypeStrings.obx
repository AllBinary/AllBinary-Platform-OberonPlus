// Generated Code Do Not Modify
// package org.allbinary.logic.communication.sql
unit SqlTypeStrings;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TSqlTypeStrings = class(TObject)
  public
    CHAR_COLUMN: string;
    INT_COLUMN: string;
    MAX_SIZE: string;
    SIXTY_SIZE: string;
    NOT_NULL: string;
    ONE_SIZE: string;
    TWO_SIZE: string;
    THREE_SIZE: string;
    SIX_SIZE: string;
    ELEVEN_SIZE: string;
    TWELVE_SIZE: string;
    ONE_KB_CHAR_COLUMN: string;
    MAX_CHAR_COLUMN: string;
    MAX_CHAR_COLUMN_NOT_NULL: string;
    SIXTY_CHAR_COLUMN_NOT_NULL: string;
    ONE_CHAR_COLUMN_NOT_NULL: string;
    SIX_CHAR_COLUMN_NOT_NULL: string;
    TWELVE_CHAR_COLUMN_NOT_NULL: string;
    TWO_INT_NOT_NULL: string;
    THREE_INT_NOT_NULL: string;
    FOUR_INT_NOT_NULL: string;
    MAX_INT_NOT_NULL: string;
    MAX_INT_UNSIGNED: string;
    MAX_INT_UNSIGNED_NOT_NULL: string;
    MAX_BIG_INT_NOT_NULL: string;
    MAX_BIG_INT_UNSIGNED: string;
    MAX_BIG_INT_UNSIGNED_NOT_NULL: string;
    MAX_BIG_INT_UNSIGNED_AUTO_INCREMENT_NOT_NULL: string;
    LONG_BLOB: string;
    BLOB: string;
    BLOB_NOT_NULL: string;
    class var instance: TSqlTypeStrings;
    procedure InitFields;
    constructor Create;
        class function getInstance: TSqlTypeStrings; static;
  end;

implementation
uses
  StringMaker, CommonSeps;


{AB:CODE}

procedure TSqlTypeStrings.InitFields;
begin
  Self.CHAR_COLUMN := 'VARCHAR';
  Self.INT_COLUMN := 'VARCHAR';
  Self.MAX_SIZE := '(255)';
  Self.SIXTY_SIZE := '(60)';
  Self.NOT_NULL := 'NOT NULL';
  Self.ONE_SIZE := '(1)';
  Self.TWO_SIZE := '(2)';
  Self.THREE_SIZE := '(3)';
  Self.SIX_SIZE := '(6)';
  Self.ELEVEN_SIZE := '(11)';
  Self.TWELVE_SIZE := '(12)';
  Self.ONE_KB_CHAR_COLUMN := TStringMaker.Create().append(TCommonSeps.getInstance().SPACE).append(Self.CHAR_COLUMN).append('(1024)').append(TCommonSeps.getInstance().COMMA_SEP).toString();
  Self.MAX_CHAR_COLUMN := TStringMaker.Create().append(TCommonSeps.getInstance().SPACE).append(Self.CHAR_COLUMN).append(Self.MAX_SIZE).append(TCommonSeps.getInstance().COMMA_SEP).toString();
  Self.MAX_CHAR_COLUMN_NOT_NULL := TStringMaker.Create().append(TCommonSeps.getInstance().SPACE).append(Self.CHAR_COLUMN).append(Self.MAX_SIZE).append(TCommonSeps.getInstance().SPACE).append(Self.NOT_NULL).append(TCommonSeps.getInstance().COMMA_SEP).toString();
  Self.SIXTY_CHAR_COLUMN_NOT_NULL := TStringMaker.Create().append(TCommonSeps.getInstance().SPACE).append(Self.CHAR_COLUMN).append(Self.SIXTY_SIZE).append(Self.NOT_NULL).append(TCommonSeps.getInstance().COMMA_SEP).toString();
  Self.ONE_CHAR_COLUMN_NOT_NULL := TStringMaker.Create().append(TCommonSeps.getInstance().SPACE).append(Self.CHAR_COLUMN).append(Self.ONE_SIZE).append(Self.NOT_NULL).append(TCommonSeps.getInstance().COMMA_SEP).toString();
  Self.SIX_CHAR_COLUMN_NOT_NULL := TStringMaker.Create().append(TCommonSeps.getInstance().SPACE).append(Self.CHAR_COLUMN).append(Self.SIX_SIZE).append(Self.NOT_NULL).append(TCommonSeps.getInstance().COMMA_SEP).toString();
  Self.TWELVE_CHAR_COLUMN_NOT_NULL := TStringMaker.Create().append(TCommonSeps.getInstance().SPACE).append(Self.CHAR_COLUMN).append(Self.TWELVE_SIZE).append(Self.NOT_NULL).append(TCommonSeps.getInstance().COMMA_SEP).toString();
  Self.TWO_INT_NOT_NULL := ' INT(2) NOT NULL, ';
  Self.THREE_INT_NOT_NULL := ' INT(3) NOT NULL, ';
  Self.FOUR_INT_NOT_NULL := ' INT(4) NOT NULL, ';
  Self.MAX_INT_NOT_NULL := ' INT(11) NOT NULL, ';
  Self.MAX_INT_UNSIGNED := ' INT(11) UNSIGNED, ';
  Self.MAX_INT_UNSIGNED_NOT_NULL := ' INT(11) UNSIGNED NOT NULL, ';
  Self.MAX_BIG_INT_NOT_NULL := ' BIGINT(19) NOT NULL, ';
  Self.MAX_BIG_INT_UNSIGNED := ' BIGINT(19) UNSIGNED, ';
  Self.MAX_BIG_INT_UNSIGNED_NOT_NULL := ' BIGINT(19) UNSIGNED NOT NULL, ';
  Self.MAX_BIG_INT_UNSIGNED_AUTO_INCREMENT_NOT_NULL := ' BIGINT(19) UNSIGNED AUTO_INCREMENT NOT NULL,';
  Self.LONG_BLOB := ' LONGBLOB, ';
  Self.BLOB := ' BLOB, ';
  Self.BLOB_NOT_NULL := ' BLOB NOT NULL, ';
end;

constructor TSqlTypeStrings.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TSqlTypeStrings.getInstance: TSqlTypeStrings;
begin
        Exit(TSqlTypeStrings.instance);
end;

initialization
  {AB:INITIALIZATION}
  TSqlTypeStrings.instance := TSqlTypeStrings.Create();
  {AB:END}

end.

