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
// package org.allbinary.business.category
unit CategoryFactoryInterface;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AbPath, Node, CategoryInterface;

type
  {AB:TYPES}
  ICategoryFactoryInterface = interface(IJavaObject) ['ICategoryFactoryInterface']
        function getRootInstance: ICategoryInterface; overload;
        function getRootInstance(categoryPath: TAbPath): ICategoryInterface; overload;
        function getRootInstanceFromNode(node_: TNode): ICategoryInterface;
        function getInstance(rootCategoryInterface: ICategoryInterface; parentCategoryInterface: ICategoryInterface; name: string): ICategoryInterface; overload;
        function getInstance(rootCategoryInterface: ICategoryInterface; parentCategoryInterface: ICategoryInterface; node_: TNode): ICategoryInterface; overload;
        function getInstance(rootCategoryInterface: ICategoryInterface; parentCategoryInterface: ICategoryInterface; categoryPropertiesHashMap: TJavaHashMap<TObject, TObject>): ICategoryInterface; overload;
  end;
  TCategoryFactoryInterface = ICategoryFactoryInterface;

implementation

{AB:CODE}

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

