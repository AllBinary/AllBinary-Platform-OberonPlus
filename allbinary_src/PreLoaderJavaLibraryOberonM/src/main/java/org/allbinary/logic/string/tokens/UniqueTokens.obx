{

  AllBinary Open License Version 1
  Copyright (c) 2011 AllBinary
  
  By agreeing to this license you and any business entity you represent are
  legally bound to the AllBinary Open License Version 1 legal agreement.
  
  You may obtain the AllBinary Open License Version 1 legal agreement from
  AllBinary or the root directory of AllBinary's AllBinary Platform repository.
  
  Created By: Travis Berthelot
   
}
// Generated Code Do Not Modify
// package org.allbinary.logic.string.tokens
unit UniqueTokens;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList;

type
  {AB:TYPES}
  TUniqueTokens = class(TObject)
  public
    specialCharacters: TBasicArrayList;
    procedure InitFields;
        constructor Create;
        function getWhithoutDashesAndSkipNumberOnlyTokens(stringVector: TBasicArrayList): THashSet; virtual;
        function numberOnly(subCleaningString: string): Boolean;
        function isSpecialCharacter(subCleaningString: string): Boolean;
  end;

implementation
uses
  Tokenizer, AbPathData, Replace, CommonPhoneStrings, CommonSeps, BasicArrayListD;


{AB:CODE}

procedure TUniqueTokens.InitFields;
begin
  Self.specialCharacters := TBasicArrayListD.Create();
end;
    

constructor TUniqueTokens.Create;
begin
    inherited Create;
    InitFields;
        Self.specialCharacters.add(TJava.Box('!'));
        Self.specialCharacters.add(TJava.Box('@'));
        Self.specialCharacters.add(TJava.Box(TCommonPhoneStrings.getInstance().POUND));
        Self.specialCharacters.add(TJava.Box('$'));
        Self.specialCharacters.add(TJava.Box('%'));
        Self.specialCharacters.add(TJava.Box('^'));
        Self.specialCharacters.add(TJava.Box(TCommonSeps.getInstance().AMPERSAND));
        Self.specialCharacters.add(TJava.Box(TCommonPhoneStrings.getInstance().STAR));
        Self.specialCharacters.add(TJava.Box('('));
        Self.specialCharacters.add(TJava.Box(')'));
        Self.specialCharacters.add(TJava.Box('-'));
        Self.specialCharacters.add(TJava.Box('_'));
        Self.specialCharacters.add(TJava.Box('+'));
        Self.specialCharacters.add(TJava.Box('='));
        Self.specialCharacters.add(TJava.Box('\'));
        Self.specialCharacters.add(TJava.Box('|'));
        Self.specialCharacters.add(TJava.Box(TAbPathData.getInstance().EXTENSION_SEP));
        Self.specialCharacters.add(TJava.Box(','));
        Self.specialCharacters.add(TJava.Box('<'));
        Self.specialCharacters.add(TJava.Box('>'));
        Self.specialCharacters.add(TJava.Box('?'));
        Self.specialCharacters.add(TJava.Box('/'));
        Self.specialCharacters.add(TJava.Box('~'));
        Self.specialCharacters.add(TJava.Box('`'));
end;
    

// throws Exception
function TUniqueTokens.getWhithoutDashesAndSkipNumberOnlyTokens(stringVector: TBasicArrayList): THashSet;
var
  hashSet_: THashSet;
  index: Integer;
  commonSeps_: TCommonSeps;
  keywords: string;
  tokenizer_: TTokenizer;
  keywordVector: TBasicArrayList;
  cleanString: string;
  spaceTokenizer: TTokenizer;
  subKeywordVector: TBasicArrayList;
  subCleanString: string;
  spaceIndex: Integer;
  forIndex: Integer;
begin
        try
            hashSet_ := THashSet.Create();
            index := 0;
            commonSeps_ := TCommonSeps.getInstance();
            while (index) < (stringVector.size()) do begin
                keywords := TJava.UnboxString(TJava.ToObject(stringVector.get(index)));
                tokenizer_ := TTokenizer.Create(commonSeps_.COMMA);
                keywordVector := tokenizer_.getTokensFromString(keywords, TBasicArrayListD.Create());
                for forIndex := 0 to keywordVector.size() - 1 do begin
                    cleanString := TJava.UnboxString(TJava.ToObject(keywordVector.get(forIndex)));
                    cleanString := Trim(cleanString);
                    if ((Pos(TJava.ToString('-'), cleanString) - 1)) <> (-1) then begin
                        cleanString := TReplace.Create('-', commonSeps_.SPACE).all(cleanString);
                    end;
                    hashSet_.add(cleanString);
                    if ((Pos(TJava.ToString(' '), cleanString) - 1)) <> (-1) then begin
                        spaceTokenizer := TTokenizer.Create(commonSeps_.SPACE);
                        subKeywordVector := spaceTokenizer.getTokensFromString(cleanString, TBasicArrayListD.Create());
                        for spaceIndex := 0 to subKeywordVector.size() - 1 do begin
                            subCleanString := TJava.UnboxString(TJava.ToObject(subKeywordVector.get(spaceIndex)));
                            if (not (Self.isSpecialCharacter(subCleanString))) and (not (Self.numberOnly(subCleanString))) then begin
                                hashSet_.add(subCleanString);
                            end;
                        end;
                    end;
                end;
                Inc(index);
            end;
            Exit(hashSet_);
        except
            on e: SysUtils.Exception do begin
            raise e;
            end;
        end;
end;
    

function TUniqueTokens.numberOnly(subCleaningString: string): Boolean;
begin
        try
            StrToInt(subCleaningString);
            Exit(True);
        except
            on e: SysUtils.Exception do begin
            Exit(False);
            end;
        end;
end;
    

function TUniqueTokens.isSpecialCharacter(subCleaningString: string): Boolean;
var
  index: Integer;
begin
        for index := 0 to Self.specialCharacters.size() - 1 do begin
            if (CompareStr(subCleaningString, TJava.UnboxString(TJava.ToObject(Self.specialCharacters.get(index))))) = (0) then begin
                Exit(True);
            end;
        end;
        Exit(False);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

