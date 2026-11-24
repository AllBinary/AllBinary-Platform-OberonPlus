// Generated Code Do Not Modify
// package org.osgi.framework
unit BundleContext;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Bundle, ServiceRegistration, ServiceReference;

type
  {AB:TYPES}
  IBundleContext = interface(IJavaObject) ['IBundleContext']
        function getBundles: TArray<TBundle>;
        function installBundle(location: string): TBundle;
        function registerService(clazz: string; service: TObject; properties: TDictionary): TServiceRegistration;
        function getService(reference: TServiceReference): TObject;
        function getServiceReferences(clazz: string; filter: string): TArray<TServiceReference>;
        function getServiceReference(clazz: string): TServiceReference;
  end;
  TBundleContext = IBundleContext;

implementation

{AB:CODE}

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

