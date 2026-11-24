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
// package org.allbinary.game.displayable.canvas
unit PreGameScrollSelectionForm;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ABCustomItem, Rectangle, BasicColor, ItemPaintableFactory, ScrollCurrentSelectionForm;

type
  {AB:TYPES}
  TPreGameScrollSelectionForm = class(TScrollCurrentSelectionForm)
  public
        constructor Create(title: string; items: TArray<TABCustomItem>; formPaintableFactory: TItemPaintableFactory; backgroundBasicColor: TBasicColor; foregroundBasicColor: TBasicColor);
        procedure init(rectangle_: TRectangle); virtual;
  end;

implementation
uses
  FormTypeFactory;


{AB:CODE}
    

constructor TPreGameScrollSelectionForm.Create(title: string; items: TArray<TABCustomItem>; formPaintableFactory: TItemPaintableFactory; backgroundBasicColor: TBasicColor; foregroundBasicColor: TBasicColor);
begin
        inherited Create(title, items, formPaintableFactory, 0, 3, False, backgroundBasicColor, foregroundBasicColor);
end;
    

// throws Exception
procedure TPreGameScrollSelectionForm.init(rectangle_: TRectangle);
begin
        inherited init(rectangle_, TFormTypeFactory.getInstance().TEMP_HORIZONTAL_FORM);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

