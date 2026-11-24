// Generated Code Do Not Modify
// package org.allbinary.game.input
unit AndroidKeyFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ActivityFractureUtil, LogUtil, AndroidGameKey, Input;

type
  {AB:TYPES}
  TAndroidKeyFactory = class(TActivityFractureUtil)
  public
    logUtil: TLogUtil;
    UNKNOWN: TAndroidGameKey;
    KEYCODE_BUTTON_L1: TAndroidGameKey;
    KEYCODE_BUTTON_R1: TAndroidGameKey;
    KEYCODE_BUTTON_THUMBR: TAndroidGameKey;
    KEYCODE_BUTTON_THUMBL: TAndroidGameKey;
    KEYCODE_BUTTON_START: TAndroidGameKey;
    KEYCODE_BUTTON_MODE: TAndroidGameKey;
    KEYCODE_BUTTON_B: TAndroidGameKey;
    KEYCODE_BUTTON_A: TAndroidGameKey;
    KEYCODE_BUTTON_X: TAndroidGameKey;
    KEYCODE_BUTTON_Y: TAndroidGameKey;
    KEYCODE_BUTTON_L2: TAndroidGameKey;
    KEYCODE_BUTTON_R2: TAndroidGameKey;
    KEYCODE_BUTTON_SELECT: TAndroidGameKey;
    KEYCODE_BUTTON_C: TAndroidGameKey;
    KEYCODE_BUTTON_Z: TAndroidGameKey;
    KEYCODE_BUTTON_1: TAndroidGameKey;
    KEYCODE_BUTTON_10: TAndroidGameKey;
    KEYCODE_BUTTON_11: TAndroidGameKey;
    KEYCODE_BUTTON_12: TAndroidGameKey;
    KEYCODE_BUTTON_13: TAndroidGameKey;
    KEYCODE_BUTTON_14: TAndroidGameKey;
    KEYCODE_BUTTON_15: TAndroidGameKey;
    KEYCODE_BUTTON_16: TAndroidGameKey;
    KEYCODE_BUTTON_2: TAndroidGameKey;
    KEYCODE_BUTTON_3: TAndroidGameKey;
    KEYCODE_BUTTON_4: TAndroidGameKey;
    KEYCODE_BUTTON_5: TAndroidGameKey;
    KEYCODE_BUTTON_6: TAndroidGameKey;
    KEYCODE_BUTTON_7: TAndroidGameKey;
    KEYCODE_BUTTON_8: TAndroidGameKey;
    KEYCODE_BUTTON_9: TAndroidGameKey;
    SOFT_LEFT: TAndroidGameKey;
    SOFT_RIGHT: TAndroidGameKey;
    HOME: TAndroidGameKey;
    BACK: TAndroidGameKey;
    CALL: TAndroidGameKey;
    ENDCALL: TAndroidGameKey;
    ZERO: TAndroidGameKey;
    ONE: TAndroidGameKey;
    TWO: TAndroidGameKey;
    THREE: TAndroidGameKey;
    FOUR: TAndroidGameKey;
    FIVE: TAndroidGameKey;
    SIX: TAndroidGameKey;
    SEVEN: TAndroidGameKey;
    EIGHT: TAndroidGameKey;
    NINE: TAndroidGameKey;
    STAR: TAndroidGameKey;
    POUND: TAndroidGameKey;
    DPAD_UP: TAndroidGameKey;
    DPAD_DOWN: TAndroidGameKey;
    DPAD_LEFT: TAndroidGameKey;
    DPAD_RIGHT: TAndroidGameKey;
    DPAD_CENTER: TAndroidGameKey;
    VOLUME_UP: TAndroidGameKey;
    VOLUME_DOWN: TAndroidGameKey;
    POWER: TAndroidGameKey;
    CAMERA: TAndroidGameKey;
    CLEAR: TAndroidGameKey;
    A: TAndroidGameKey;
    B: TAndroidGameKey;
    C: TAndroidGameKey;
    D: TAndroidGameKey;
    E: TAndroidGameKey;
    F: TAndroidGameKey;
    G: TAndroidGameKey;
    H: TAndroidGameKey;
    I: TAndroidGameKey;
    J: TAndroidGameKey;
    K: TAndroidGameKey;
    L: TAndroidGameKey;
    M: TAndroidGameKey;
    N: TAndroidGameKey;
    O: TAndroidGameKey;
    P: TAndroidGameKey;
    Q: TAndroidGameKey;
    R: TAndroidGameKey;
    S: TAndroidGameKey;
    T: TAndroidGameKey;
    U: TAndroidGameKey;
    V: TAndroidGameKey;
    W: TAndroidGameKey;
    X: TAndroidGameKey;
    Y: TAndroidGameKey;
    Z: TAndroidGameKey;
    COMMA: TAndroidGameKey;
    PERIOD: TAndroidGameKey;
    ALT_LEFT: TAndroidGameKey;
    ALT_RIGHT: TAndroidGameKey;
    SHIFT_LEFT: TAndroidGameKey;
    SHIFT_RIGHT: TAndroidGameKey;
    TAB: TAndroidGameKey;
    SPACE: TAndroidGameKey;
    SYM: TAndroidGameKey;
    EXPLORER: TAndroidGameKey;
    ENVELOPE: TAndroidGameKey;
    ENTER: TAndroidGameKey;
    DEL: TAndroidGameKey;
    GRAVE: TAndroidGameKey;
    MINUS: TAndroidGameKey;
    EQUALS: TAndroidGameKey;
    LEFT_BRACKET: TAndroidGameKey;
    RIGHT_BRACKET: TAndroidGameKey;
    BACKSLASH: TAndroidGameKey;
    SEMICOLON: TAndroidGameKey;
    APOSTROPHE: TAndroidGameKey;
    SLASH: TAndroidGameKey;
    AT: TAndroidGameKey;
    NUM: TAndroidGameKey;
    HEADSETHOOK: TAndroidGameKey;
    FOCUS: TAndroidGameKey;
    PLUS: TAndroidGameKey;
    MENU: TAndroidGameKey;
    NOTIFICATION: TAndroidGameKey;
    SEARCH: TAndroidGameKey;
    procedure InitFields;
    constructor Create;
        procedure init; virtual;
        function isSubmission(input_: TInput): Boolean; virtual;
        function isDelete(input_: TInput): Boolean; virtual;
        function isBackSpace(input_: TInput): Boolean; virtual;
        function isLeft(input_: TInput): Boolean; virtual;
        function isRight(input_: TInput): Boolean; virtual;
        function isUp(input_: TInput): Boolean; virtual;
        function isDown(input_: TInput): Boolean; virtual;
        function isEnter(input_: TInput): Boolean; virtual;
  end;

implementation
uses
  KeyEvent, CommonPhoneStrings, AbPathData, CommonStrings;


{AB:CODE}

procedure TAndroidKeyFactory.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.UNKNOWN := TAndroidGameKey.Create(TKeyEvent.KEYCODE_UNKNOWN, 'UNKNOWN');
  Self.KEYCODE_BUTTON_L1 := Self.UNKNOWN;
  Self.KEYCODE_BUTTON_R1 := Self.UNKNOWN;
  Self.KEYCODE_BUTTON_THUMBR := Self.UNKNOWN;
  Self.KEYCODE_BUTTON_THUMBL := Self.UNKNOWN;
  Self.KEYCODE_BUTTON_START := Self.UNKNOWN;
  Self.KEYCODE_BUTTON_MODE := Self.UNKNOWN;
  Self.KEYCODE_BUTTON_B := Self.UNKNOWN;
  Self.KEYCODE_BUTTON_A := Self.UNKNOWN;
  Self.KEYCODE_BUTTON_X := Self.UNKNOWN;
  Self.KEYCODE_BUTTON_Y := Self.UNKNOWN;
  Self.KEYCODE_BUTTON_L2 := Self.UNKNOWN;
  Self.KEYCODE_BUTTON_R2 := Self.UNKNOWN;
  Self.KEYCODE_BUTTON_SELECT := Self.UNKNOWN;
  Self.KEYCODE_BUTTON_C := Self.UNKNOWN;
  Self.KEYCODE_BUTTON_Z := Self.UNKNOWN;
  Self.KEYCODE_BUTTON_1 := Self.UNKNOWN;
  Self.KEYCODE_BUTTON_10 := Self.UNKNOWN;
  Self.KEYCODE_BUTTON_11 := Self.UNKNOWN;
  Self.KEYCODE_BUTTON_12 := Self.UNKNOWN;
  Self.KEYCODE_BUTTON_13 := Self.UNKNOWN;
  Self.KEYCODE_BUTTON_14 := Self.UNKNOWN;
  Self.KEYCODE_BUTTON_15 := Self.UNKNOWN;
  Self.KEYCODE_BUTTON_16 := Self.UNKNOWN;
  Self.KEYCODE_BUTTON_2 := Self.UNKNOWN;
  Self.KEYCODE_BUTTON_3 := Self.UNKNOWN;
  Self.KEYCODE_BUTTON_4 := Self.UNKNOWN;
  Self.KEYCODE_BUTTON_5 := Self.UNKNOWN;
  Self.KEYCODE_BUTTON_6 := Self.UNKNOWN;
  Self.KEYCODE_BUTTON_7 := Self.UNKNOWN;
  Self.KEYCODE_BUTTON_8 := Self.UNKNOWN;
  Self.KEYCODE_BUTTON_9 := Self.UNKNOWN;
  Self.SOFT_LEFT := TAndroidGameKey.Create(TKeyEvent.KEYCODE_SOFT_LEFT, 'SOFT_LEFT');
  Self.SOFT_RIGHT := TAndroidGameKey.Create(TKeyEvent.KEYCODE_SOFT_RIGHT, 'SOFT_RIGHT');
  Self.HOME := TAndroidGameKey.Create(TKeyEvent.KEYCODE_HOME, 'HOME');
  Self.BACK := TAndroidGameKey.Create(TKeyEvent.KEYCODE_BACK, 'BACK');
  Self.CALL := TAndroidGameKey.Create(TKeyEvent.KEYCODE_CALL, 'CALL');
  Self.ENDCALL := TAndroidGameKey.Create(TKeyEvent.KEYCODE_ENDCALL, 'ENDCALL');
  Self.ZERO := TAndroidGameKey.Create(TKeyEvent.KEYCODE_0, TCommonPhoneStrings.getInstance().ZERO);
  Self.ONE := TAndroidGameKey.Create(TKeyEvent.KEYCODE_1, TCommonPhoneStrings.getInstance().ONE);
  Self.TWO := TAndroidGameKey.Create(TKeyEvent.KEYCODE_2, TCommonPhoneStrings.getInstance().TWO);
  Self.THREE := TAndroidGameKey.Create(TKeyEvent.KEYCODE_3, TCommonPhoneStrings.getInstance().THREE);
  Self.FOUR := TAndroidGameKey.Create(TKeyEvent.KEYCODE_4, TCommonPhoneStrings.getInstance().FOUR);
  Self.FIVE := TAndroidGameKey.Create(TKeyEvent.KEYCODE_5, TCommonPhoneStrings.getInstance().FIVE);
  Self.SIX := TAndroidGameKey.Create(TKeyEvent.KEYCODE_6, TCommonPhoneStrings.getInstance().SIX);
  Self.SEVEN := TAndroidGameKey.Create(TKeyEvent.KEYCODE_7, TCommonPhoneStrings.getInstance().SEVEN);
  Self.EIGHT := TAndroidGameKey.Create(TKeyEvent.KEYCODE_8, TCommonPhoneStrings.getInstance().EIGHT);
  Self.NINE := TAndroidGameKey.Create(TKeyEvent.KEYCODE_9, TCommonPhoneStrings.getInstance().NINE);
  Self.STAR := TAndroidGameKey.Create(TKeyEvent.KEYCODE_STAR, TCommonPhoneStrings.getInstance().STAR);
  Self.POUND := TAndroidGameKey.Create(TKeyEvent.KEYCODE_POUND, TCommonPhoneStrings.getInstance().POUND);
  Self.DPAD_UP := TAndroidGameKey.Create(TKeyEvent.KEYCODE_DPAD_UP, 'UP');
  Self.DPAD_DOWN := TAndroidGameKey.Create(TKeyEvent.KEYCODE_DPAD_DOWN, 'DOWN');
  Self.DPAD_LEFT := TAndroidGameKey.Create(TKeyEvent.KEYCODE_DPAD_LEFT, 'LEFT');
  Self.DPAD_RIGHT := TAndroidGameKey.Create(TKeyEvent.KEYCODE_DPAD_RIGHT, 'RIGHT');
  Self.DPAD_CENTER := TAndroidGameKey.Create(TKeyEvent.KEYCODE_DPAD_CENTER, 'CENTER');
  Self.VOLUME_UP := TAndroidGameKey.Create(TKeyEvent.KEYCODE_VOLUME_UP, 'VOLUME_UP');
  Self.VOLUME_DOWN := TAndroidGameKey.Create(TKeyEvent.KEYCODE_VOLUME_DOWN, 'VOLUME_DOWN');
  Self.POWER := TAndroidGameKey.Create(TKeyEvent.KEYCODE_POWER, 'POWER');
  Self.CAMERA := TAndroidGameKey.Create(TKeyEvent.KEYCODE_CAMERA, 'CAMERA');
  Self.CLEAR := TAndroidGameKey.Create(TKeyEvent.KEYCODE_CLEAR, 'CLEAR');
  Self.A := TAndroidGameKey.Create(TKeyEvent.KEYCODE_A, 'A');
  Self.B := TAndroidGameKey.Create(TKeyEvent.KEYCODE_B, 'B');
  Self.C := TAndroidGameKey.Create(TKeyEvent.KEYCODE_C, 'C');
  Self.D := TAndroidGameKey.Create(TKeyEvent.KEYCODE_D, 'D');
  Self.E := TAndroidGameKey.Create(TKeyEvent.KEYCODE_E, 'E');
  Self.F := TAndroidGameKey.Create(TKeyEvent.KEYCODE_F, 'F');
  Self.G := TAndroidGameKey.Create(TKeyEvent.KEYCODE_G, 'G');
  Self.H := TAndroidGameKey.Create(TKeyEvent.KEYCODE_H, 'H');
  Self.I := TAndroidGameKey.Create(TKeyEvent.KEYCODE_I, 'I');
  Self.J := TAndroidGameKey.Create(TKeyEvent.KEYCODE_J, 'J');
  Self.K := TAndroidGameKey.Create(TKeyEvent.KEYCODE_K, 'K');
  Self.L := TAndroidGameKey.Create(TKeyEvent.KEYCODE_L, 'L');
  Self.M := TAndroidGameKey.Create(TKeyEvent.KEYCODE_M, 'M');
  Self.N := TAndroidGameKey.Create(TKeyEvent.KEYCODE_N, 'N');
  Self.O := TAndroidGameKey.Create(TKeyEvent.KEYCODE_O, 'O');
  Self.P := TAndroidGameKey.Create(TKeyEvent.KEYCODE_P, 'P');
  Self.Q := TAndroidGameKey.Create(TKeyEvent.KEYCODE_Q, 'Q');
  Self.R := TAndroidGameKey.Create(TKeyEvent.KEYCODE_R, 'R');
  Self.S := TAndroidGameKey.Create(TKeyEvent.KEYCODE_S, 'S');
  Self.T := TAndroidGameKey.Create(TKeyEvent.KEYCODE_T, 'T');
  Self.U := TAndroidGameKey.Create(TKeyEvent.KEYCODE_U, 'U');
  Self.V := TAndroidGameKey.Create(TKeyEvent.KEYCODE_V, 'V');
  Self.W := TAndroidGameKey.Create(TKeyEvent.KEYCODE_W, 'W');
  Self.X := TAndroidGameKey.Create(TKeyEvent.KEYCODE_X, 'X');
  Self.Y := TAndroidGameKey.Create(TKeyEvent.KEYCODE_Y, 'Y');
  Self.Z := TAndroidGameKey.Create(TKeyEvent.KEYCODE_Z, 'Z');
  Self.COMMA := TAndroidGameKey.Create(TKeyEvent.KEYCODE_COMMA, 'COMMA');
  Self.PERIOD := TAndroidGameKey.Create(TKeyEvent.KEYCODE_PERIOD, TAbPathData.getInstance().EXTENSION_SEP);
  Self.ALT_LEFT := TAndroidGameKey.Create(TKeyEvent.KEYCODE_ALT_LEFT, 'ALT_LEFT');
  Self.ALT_RIGHT := TAndroidGameKey.Create(TKeyEvent.KEYCODE_ALT_RIGHT, 'ALT_RIGHT');
  Self.SHIFT_LEFT := TAndroidGameKey.Create(TKeyEvent.KEYCODE_SHIFT_LEFT, 'SHIFT_LEFT');
  Self.SHIFT_RIGHT := TAndroidGameKey.Create(TKeyEvent.KEYCODE_SHIFT_RIGHT, 'SHIFT_RIGHT');
  Self.TAB := TAndroidGameKey.Create(TKeyEvent.KEYCODE_TAB, 'TAB');
  Self.SPACE := TAndroidGameKey.Create(TKeyEvent.KEYCODE_SPACE, 'SPACE');
  Self.SYM := TAndroidGameKey.Create(TKeyEvent.KEYCODE_SYM, 'SYM');
  Self.EXPLORER := TAndroidGameKey.Create(TKeyEvent.KEYCODE_EXPLORER, 'EXPLORER');
  Self.ENVELOPE := TAndroidGameKey.Create(TKeyEvent.KEYCODE_ENVELOPE, 'ENVELOPE');
  Self.ENTER := TAndroidGameKey.Create(TKeyEvent.KEYCODE_ENTER, 'ENTER');
  Self.DEL := TAndroidGameKey.Create(TKeyEvent.KEYCODE_DEL, 'DEL');
  Self.GRAVE := TAndroidGameKey.Create(TKeyEvent.KEYCODE_GRAVE, 'GRAVE');
  Self.MINUS := TAndroidGameKey.Create(TKeyEvent.KEYCODE_MINUS, 'MINUS');
  Self.EQUALS := TAndroidGameKey.Create(TKeyEvent.KEYCODE_EQUALS, 'EQUALS');
  Self.LEFT_BRACKET := TAndroidGameKey.Create(TKeyEvent.KEYCODE_LEFT_BRACKET, 'LEFT_BRACKET');
  Self.RIGHT_BRACKET := TAndroidGameKey.Create(TKeyEvent.KEYCODE_RIGHT_BRACKET, 'RIGHT_BRACKET');
  Self.BACKSLASH := TAndroidGameKey.Create(TKeyEvent.KEYCODE_BACKSLASH, 'BACKSLASH');
  Self.SEMICOLON := TAndroidGameKey.Create(TKeyEvent.KEYCODE_SEMICOLON, 'SEMICOLON');
  Self.APOSTROPHE := TAndroidGameKey.Create(TKeyEvent.KEYCODE_APOSTROPHE, 'APOSTROPHE');
  Self.SLASH := TAndroidGameKey.Create(TKeyEvent.KEYCODE_SLASH, 'SLASH');
  Self.AT := TAndroidGameKey.Create(TKeyEvent.KEYCODE_AT, 'AT');
  Self.NUM := TAndroidGameKey.Create(TKeyEvent.KEYCODE_NUM, 'NUM');
  Self.HEADSETHOOK := TAndroidGameKey.Create(TKeyEvent.KEYCODE_HEADSETHOOK, 'HEADSETHOOK');
  Self.FOCUS := TAndroidGameKey.Create(TKeyEvent.KEYCODE_FOCUS, 'FOCUS');
  Self.PLUS := TAndroidGameKey.Create(TKeyEvent.KEYCODE_PLUS, 'PLUS');
  Self.MENU := TAndroidGameKey.Create(TKeyEvent.KEYCODE_MENU, 'MENU');
  Self.NOTIFICATION := TAndroidGameKey.Create(TKeyEvent.KEYCODE_NOTIFICATION, 'NOTIFICATION');
  Self.SEARCH := TAndroidGameKey.Create(TKeyEvent.KEYCODE_SEARCH, 'SEARCH');
end;

constructor TAndroidKeyFactory.Create;
begin
  inherited Create;
  InitFields;
end;
    

procedure TAndroidKeyFactory.init;
var
  commonStrings_: TCommonStrings;
begin
        commonStrings_ := TCommonStrings.getInstance();
        Self.logUtil.putF('Start/End', TJava.Box(Self), commonStrings_.INIT);
end;
    

function TAndroidKeyFactory.isSubmission(input_: TInput): Boolean;
begin
        if (input_) = (Self.ENTER) then begin
            Exit(True);
        end else if (input_) = (Self.DPAD_CENTER) then begin
            Exit(True);
        end;
        Exit(False);
end;
    

function TAndroidKeyFactory.isDelete(input_: TInput): Boolean;
begin
        Exit(False);
end;
    

function TAndroidKeyFactory.isBackSpace(input_: TInput): Boolean;
begin
        if (input_) = (Self.DEL) then begin
            Exit(True);
        end;
        Exit(False);
end;
    

function TAndroidKeyFactory.isLeft(input_: TInput): Boolean;
begin
        if (input_) = (Self.DPAD_LEFT) then begin
            Exit(True);
        end;
        Exit(False);
end;
    

function TAndroidKeyFactory.isRight(input_: TInput): Boolean;
begin
        if (input_) = (Self.DPAD_RIGHT) then begin
            Exit(True);
        end;
        Exit(False);
end;
    

function TAndroidKeyFactory.isUp(input_: TInput): Boolean;
begin
        if (input_) = (Self.DPAD_UP) then begin
            Exit(True);
        end;
        Exit(False);
end;
    

function TAndroidKeyFactory.isDown(input_: TInput): Boolean;
begin
        if (input_) = (Self.DPAD_DOWN) then begin
            Exit(True);
        end;
        Exit(False);
end;
    

function TAndroidKeyFactory.isEnter(input_: TInput): Boolean;
begin
        if (input_) = (Self.DPAD_CENTER) then begin
            Exit(True);
        end else if (input_) = (Self.ENTER) then begin
            Exit(True);
        end else if (input_) = (Self.CALL) then begin
            Exit(True);
        end;
        Exit(False);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

