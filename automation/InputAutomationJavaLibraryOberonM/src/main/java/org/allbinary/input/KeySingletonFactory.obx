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
// package org.allbinary.input
unit KeySingletonFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, ABHashtable;

type
  {AB:TYPES}
  TKeySingletonFactory = class(TObject)
  public
    logUtil: TLogUtil;
    class var keyStringHashtable: TABHashtable<TObject, TObject>;
    class var keyArray: TArray<Integer>;
    procedure InitFields;
    class procedure StaticInitializer; static;
        constructor Create;
        class function getHashtable: TABHashtable<TObject, TObject>; static;
        class function getInstance(index: Integer): Integer; static;
        class function getArray: TArray<Integer>; static;
  end;

implementation
uses
  StdUtil, CommonStrings;


{AB:CODE}

procedure TKeySingletonFactory.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;
    

class procedure TKeySingletonFactory.StaticInitializer;
var
  logUtil_: TLogUtil;
  commonStrings_: TCommonStrings;
  STATIC_BLOCK: string;
  keyAsString: string;
  index: Integer;
begin
        logUtil_ := TLogUtil.getInstance();
        commonStrings_ := TCommonStrings.getInstance();
        STATIC_BLOCK := 'Static Block';
        try
            for index := 0 to System.Length(TKeySingletonFactory.keyArray) - 1 do begin
                keyAsString := TKeyEvent.getKeyText(TKeySingletonFactory.keyArray[index]);
                TKeySingletonFactory.keyStringHashtable.put(TJava.Box(keyAsString), TJava.Box(TKeySingletonFactory.keyArray[index]));
            end;
        except
            on e: SysUtils.Exception do begin
            logUtil_.put(commonStrings_.EXCEPTION, TJava.Box('KeySingleFactory'), STATIC_BLOCK, TJava.Box(e));
            end;
        end;
end;
    

constructor TKeySingletonFactory.Create;
begin
    inherited Create;
    InitFields;
end;
    

class function TKeySingletonFactory.getHashtable: TABHashtable<TObject, TObject>;
begin
        Exit(TKeySingletonFactory.keyStringHashtable);
end;
    

class function TKeySingletonFactory.getInstance(index: Integer): Integer;
begin
        Exit(IntToStr(index));
end;
    

class function TKeySingletonFactory.getArray: TArray<Integer>;
begin
        Exit(TKeySingletonFactory.keyArray);
end;

initialization
  {AB:INITIALIZATION}
  TKeySingletonFactory.keyStringHashtable := TStdUtil.getInstance().createHashtable();
  TKeySingletonFactory.keyArray := TArray<Integer>.Create(TKeyEvent.VK_0, TKeyEvent.VK_1, TKeyEvent.VK_2, TKeyEvent.VK_3, TKeyEvent.VK_4, TKeyEvent.VK_5, TKeyEvent.VK_6, TKeyEvent.VK_7, TKeyEvent.VK_8, TKeyEvent.VK_9, TKeyEvent.VK_A, TKeyEvent.VK_B, TKeyEvent.VK_C, TKeyEvent.VK_D, TKeyEvent.VK_E, TKeyEvent.VK_F, TKeyEvent.VK_G, TKeyEvent.VK_H, TKeyEvent.VK_I, TKeyEvent.VK_J, TKeyEvent.VK_K, TKeyEvent.VK_L, TKeyEvent.VK_M, TKeyEvent.VK_N, TKeyEvent.VK_O, TKeyEvent.VK_Q, TKeyEvent.VK_R, TKeyEvent.VK_S, TKeyEvent.VK_T, TKeyEvent.VK_U, TKeyEvent.VK_V, TKeyEvent.VK_W, TKeyEvent.VK_X, TKeyEvent.VK_Y, TKeyEvent.VK_Z, TKeyEvent.VK_NUMPAD0, TKeyEvent.VK_NUMPAD1, TKeyEvent.VK_NUMPAD2, TKeyEvent.VK_NUMPAD3, TKeyEvent.VK_NUMPAD4, TKeyEvent.VK_NUMPAD5, TKeyEvent.VK_NUMPAD6, TKeyEvent.VK_NUMPAD7, TKeyEvent.VK_NUMPAD8, TKeyEvent.VK_NUMPAD9, TKeyEvent.VK_NUM_LOCK, TKeyEvent.VK_F1, TKeyEvent.VK_F2, TKeyEvent.VK_F3, TKeyEvent.VK_F4, TKeyEvent.VK_F5, TKeyEvent.VK_F6, TKeyEvent.VK_F7, TKeyEvent.VK_F8, TKeyEvent.VK_F9, TKeyEvent.VK_F10, TKeyEvent.VK_F11, TKeyEvent.VK_F12, TKeyEvent.VK_F13, TKeyEvent.VK_F14, TKeyEvent.VK_F15, TKeyEvent.VK_F16, TKeyEvent.VK_F17, TKeyEvent.VK_F18, TKeyEvent.VK_F19, TKeyEvent.VK_F20, TKeyEvent.VK_F21, TKeyEvent.VK_F22, TKeyEvent.VK_F23, TKeyEvent.VK_F24, TKeyEvent.VK_ACCEPT, TKeyEvent.VK_ADD, TKeyEvent.VK_AGAIN, TKeyEvent.VK_ALL_CANDIDATES, TKeyEvent.VK_ALPHANUMERIC, TKeyEvent.VK_ALT, TKeyEvent.VK_ALT_GRAPH, TKeyEvent.VK_AMPERSAND, TKeyEvent.VK_ASTERISK, TKeyEvent.VK_AT, TKeyEvent.VK_BACK_QUOTE, TKeyEvent.VK_BACK_SLASH, TKeyEvent.VK_BACK_SPACE, TKeyEvent.VK_BEGIN, TKeyEvent.VK_BRACELEFT, TKeyEvent.VK_BRACERIGHT, TKeyEvent.VK_CANCEL, TKeyEvent.VK_CAPS_LOCK, TKeyEvent.VK_CIRCUMFLEX, TKeyEvent.VK_CLEAR, TKeyEvent.VK_CLOSE_BRACKET, TKeyEvent.VK_CODE_INPUT, TKeyEvent.VK_COLON, TKeyEvent.VK_COMMA, TKeyEvent.VK_COMPOSE, TKeyEvent.VK_CONTEXT_MENU, TKeyEvent.VK_CONTROL, TKeyEvent.VK_CONVERT, TKeyEvent.VK_COPY, TKeyEvent.VK_CUT, TKeyEvent.VK_DEAD_ABOVEDOT, TKeyEvent.VK_DEAD_ABOVERING, TKeyEvent.VK_DEAD_ACUTE, TKeyEvent.VK_DEAD_BREVE, TKeyEvent.VK_DEAD_CARON, TKeyEvent.VK_DEAD_CEDILLA, TKeyEvent.VK_DEAD_CIRCUMFLEX, TKeyEvent.VK_DEAD_DIAERESIS, TKeyEvent.VK_DEAD_DOUBLEACUTE, TKeyEvent.VK_DEAD_GRAVE, TKeyEvent.VK_DEAD_IOTA, TKeyEvent.VK_DEAD_MACRON, TKeyEvent.VK_DEAD_OGONEK, TKeyEvent.VK_DEAD_SEMIVOICED_SOUND, TKeyEvent.VK_DEAD_TILDE, TKeyEvent.VK_DEAD_VOICED_SOUND, TKeyEvent.VK_DECIMAL, TKeyEvent.VK_DELETE, TKeyEvent.VK_DIVIDE, TKeyEvent.VK_DOLLAR, TKeyEvent.VK_DOWN, TKeyEvent.VK_END, TKeyEvent.VK_ENTER, TKeyEvent.VK_EQUALS, TKeyEvent.VK_ESCAPE, TKeyEvent.VK_EURO_SIGN, TKeyEvent.VK_EXCLAMATION_MARK, TKeyEvent.VK_FINAL, TKeyEvent.VK_FIND, TKeyEvent.VK_FULL_WIDTH, TKeyEvent.VK_GREATER, TKeyEvent.VK_HALF_WIDTH, TKeyEvent.VK_HELP, TKeyEvent.VK_HIRAGANA, TKeyEvent.VK_HOME, TKeyEvent.VK_INPUT_METHOD_ON_OFF, TKeyEvent.VK_INSERT, TKeyEvent.VK_INVERTED_EXCLAMATION_MARK, TKeyEvent.VK_JAPANESE_HIRAGANA, TKeyEvent.VK_JAPANESE_KATAKANA, TKeyEvent.VK_JAPANESE_ROMAN, TKeyEvent.VK_KANA, TKeyEvent.VK_KANA_LOCK, TKeyEvent.VK_KANJI, TKeyEvent.VK_KATAKANA, TKeyEvent.VK_KP_DOWN, TKeyEvent.VK_KP_LEFT, TKeyEvent.VK_KP_RIGHT, TKeyEvent.VK_KP_UP, TKeyEvent.VK_LEFT, TKeyEvent.VK_LEFT_PARENTHESIS, TKeyEvent.VK_LESS, TKeyEvent.VK_META, TKeyEvent.VK_MINUS, TKeyEvent.VK_MODECHANGE, TKeyEvent.VK_MULTIPLY, TKeyEvent.VK_NONCONVERT, TKeyEvent.VK_NUMBER_SIGN, TKeyEvent.VK_OPEN_BRACKET, TKeyEvent.VK_PAGE_DOWN, TKeyEvent.VK_PAGE_UP, TKeyEvent.VK_PASTE, TKeyEvent.VK_PAUSE, TKeyEvent.VK_PERIOD, TKeyEvent.VK_PLUS, TKeyEvent.VK_PREVIOUS_CANDIDATE, TKeyEvent.VK_PRINTSCREEN, TKeyEvent.VK_PROPS, TKeyEvent.VK_QUOTE, TKeyEvent.VK_QUOTEDBL, TKeyEvent.VK_RIGHT, TKeyEvent.VK_RIGHT_PARENTHESIS, TKeyEvent.VK_SCROLL_LOCK, TKeyEvent.VK_SEMICOLON, TKeyEvent.VK_SEPARATER, TKeyEvent.VK_SEPARATOR, TKeyEvent.VK_SHIFT, TKeyEvent.VK_SLASH, TKeyEvent.VK_SPACE, TKeyEvent.VK_STOP, TKeyEvent.VK_SUBTRACT, TKeyEvent.VK_TAB, TKeyEvent.VK_UNDEFINED, TKeyEvent.VK_UNDERSCORE, TKeyEvent.VK_UNDO, TKeyEvent.VK_UP, TKeyEvent.VK_WINDOWS);
  TKeySingletonFactory.StaticInitializer;
  {AB:END}

end.

