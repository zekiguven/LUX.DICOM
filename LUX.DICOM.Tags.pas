﻿unit LUX.DICOM.Tags;

interface //#################################################################### ■

uses System.Classes, System.SysUtils, System.Generics.Collections,
     LUX, LUX.DICOM.VRs;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% THex4

     THex4 = type Word;

     HHex4 = record helper for THex4
     private
     public
       ///// メソッド
       function ToString :String;
     end;

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TDICOMTag

     TDICOMTag = packed record
     private
     public
       Grup :THex4;
       Elem :THex4;
       ///// メソッド
       function ToString :String;
     end;

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TDICOMElem

     TDICOMElem = record
     private
     public
       Kind :TKindVR;
       Desc :String;
       /////
       constructor Create( const Kind_:TKindVR; const Desc_:String );
     end;

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TDICOMElems

     TDICOMElems = class( TDictionary<Word,TDICOMElem> )
     private
     protected
       ///// メソッド
       procedure Add( const Elem_:Word; const Kind_:TKindVR; const Desc_:String );
     public
       constructor Create;
       destructor Destroy; override;
     end;

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TDICOMGrups

     TDICOMGrups = class( TDictionary<Word,TDICOMElems> )
     private
     protected
     public
       constructor Create;
       destructor Destroy; override;
     end;

//const //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【定数】

//var //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【変数】

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

implementation //############################################################### ■

uses LUX.DICOM.Tags.G0000,
     LUX.DICOM.Tags.G0002,
     LUX.DICOM.Tags.G0004,
     LUX.DICOM.Tags.G0008,
     LUX.DICOM.Tags.G0010,
     LUX.DICOM.Tags.G0012,
     LUX.DICOM.Tags.G0014,
     LUX.DICOM.Tags.G0018,
     LUX.DICOM.Tags.G0020,
     LUX.DICOM.Tags.G0022,
     LUX.DICOM.Tags.G0024,
     LUX.DICOM.Tags.G0028,
     LUX.DICOM.Tags.G0032,
     LUX.DICOM.Tags.G0038,
     LUX.DICOM.Tags.G003A,
     LUX.DICOM.Tags.G0040,
     LUX.DICOM.Tags.G0042,
     LUX.DICOM.Tags.G0044,
     LUX.DICOM.Tags.G0046,
     LUX.DICOM.Tags.G0048,
     LUX.DICOM.Tags.G0050,
     LUX.DICOM.Tags.G0052,
     LUX.DICOM.Tags.G0054,
     LUX.DICOM.Tags.G0060,
     LUX.DICOM.Tags.G0062,
     LUX.DICOM.Tags.G0064,
     LUX.DICOM.Tags.G0066,
     LUX.DICOM.Tags.G0068,
     LUX.DICOM.Tags.G0070,
     LUX.DICOM.Tags.G0072,
     LUX.DICOM.Tags.G0074,
     LUX.DICOM.Tags.G0076,
     LUX.DICOM.Tags.G0078,
     LUX.DICOM.Tags.G0080,
     LUX.DICOM.Tags.G0082,
     LUX.DICOM.Tags.G0088,
     LUX.DICOM.Tags.G0100,
     LUX.DICOM.Tags.G0400,
     LUX.DICOM.Tags.G1000,
     LUX.DICOM.Tags.G1010,
     LUX.DICOM.Tags.G2000,
     LUX.DICOM.Tags.G2010,
     LUX.DICOM.Tags.G2020,
     LUX.DICOM.Tags.G2030,
     LUX.DICOM.Tags.G2040,
     LUX.DICOM.Tags.G2050,
     LUX.DICOM.Tags.G2100,
     LUX.DICOM.Tags.G2110,
     LUX.DICOM.Tags.G2120,
     LUX.DICOM.Tags.G2130,
     LUX.DICOM.Tags.G2200,
     LUX.DICOM.Tags.G3002,
     LUX.DICOM.Tags.G3004,
     LUX.DICOM.Tags.G3006,
     LUX.DICOM.Tags.G3008,
     LUX.DICOM.Tags.G300A,
     LUX.DICOM.Tags.G300C,
     LUX.DICOM.Tags.G300E,
     LUX.DICOM.Tags.G4000,
     LUX.DICOM.Tags.G4008,
     LUX.DICOM.Tags.G4010,
     LUX.DICOM.Tags.G4FFE,
     LUX.DICOM.Tags.G50xx,
     LUX.DICOM.Tags.G5200,
     LUX.DICOM.Tags.G5400,
     LUX.DICOM.Tags.G5600,
     LUX.DICOM.Tags.G60xx,
     LUX.DICOM.Tags.G7Fxx,
     LUX.DICOM.Tags.G7FE0,
     LUX.DICOM.Tags.GFFFA,
     LUX.DICOM.Tags.GFFFC,
     LUX.DICOM.Tags.GFFFE;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% THex4

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

/////////////////////////////////////////////////////////////////////// メソッド

function HHex4.ToString :String;
begin
     Result := IntToHex( Self, 4 );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TDICOMTag

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

/////////////////////////////////////////////////////////////////////// メソッド

function TDICOMTag.ToString :String;
begin
     Result := '(' + Grup.ToString + ',' + Elem.ToString + ')';
end;

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TDICOMElem

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

/////////////////////////////////////////////////////////////////////// メソッド

constructor TDICOMElem.Create( const Kind_:TKindVR; const Desc_:String );
begin
     Kind := Kind_;
     Desc := Desc_;
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TDICOMElems

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

/////////////////////////////////////////////////////////////////////// メソッド

procedure TDICOMElems.Add( const Elem_:Word; const Kind_:TKindVR; const Desc_:String );
begin
     inherited Add( Elem_, TDICOMElem.Create( Kind_, Desc_ ) );
end;

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TDICOMElems.Create;
begin
     inherited Create;

end;

destructor TDICOMElems.Destroy;
begin

     inherited;
end;

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TDICOMGrups

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TDICOMGrups.Create;
begin
     inherited Create;

     Add( $0000, TDICOMElems0000.Create );
     Add( $0002, TDICOMElems0002.Create );
     Add( $0004, TDICOMElems0004.Create );
     Add( $0008, TDICOMElems0008.Create );
     Add( $0010, TDICOMElems0010.Create );
     Add( $0012, TDICOMElems0012.Create );
     Add( $0014, TDICOMElems0014.Create );
     Add( $0018, TDICOMElems0018.Create );
     Add( $0020, TDICOMElems0020.Create );
     Add( $0022, TDICOMElems0022.Create );
     Add( $0024, TDICOMElems0024.Create );
     Add( $0028, TDICOMElems0028.Create );
     Add( $0032, TDICOMElems0032.Create );
     Add( $0038, TDICOMElems0038.Create );
     Add( $003A, TDICOMElems003A.Create );
     Add( $0040, TDICOMElems0040.Create );
     Add( $0042, TDICOMElems0042.Create );
     Add( $0044, TDICOMElems0044.Create );
     Add( $0046, TDICOMElems0046.Create );
     Add( $0048, TDICOMElems0048.Create );
     Add( $0050, TDICOMElems0050.Create );
     Add( $0052, TDICOMElems0052.Create );
     Add( $0054, TDICOMElems0054.Create );
     Add( $0060, TDICOMElems0060.Create );
     Add( $0062, TDICOMElems0062.Create );
     Add( $0064, TDICOMElems0064.Create );
     Add( $0066, TDICOMElems0066.Create );
     Add( $0068, TDICOMElems0068.Create );
     Add( $0070, TDICOMElems0070.Create );
     Add( $0072, TDICOMElems0072.Create );
     Add( $0074, TDICOMElems0074.Create );
     Add( $0076, TDICOMElems0076.Create );
     Add( $0078, TDICOMElems0078.Create );
     Add( $0080, TDICOMElems0080.Create );
     Add( $0082, TDICOMElems0082.Create );
     Add( $0088, TDICOMElems0088.Create );
     Add( $0100, TDICOMElems0100.Create );
     Add( $0400, TDICOMElems0400.Create );
     Add( $1000, TDICOMElems1000.Create );
     Add( $1010, TDICOMElems1010.Create );
     Add( $2000, TDICOMElems2000.Create );
     Add( $2010, TDICOMElems2010.Create );
     Add( $2020, TDICOMElems2020.Create );
     Add( $2030, TDICOMElems2030.Create );
     Add( $2040, TDICOMElems2040.Create );
     Add( $2050, TDICOMElems2050.Create );
     Add( $2100, TDICOMElems2100.Create );
     Add( $2110, TDICOMElems2110.Create );
     Add( $2120, TDICOMElems2120.Create );
     Add( $2130, TDICOMElems2130.Create );
     Add( $2200, TDICOMElems2200.Create );
     Add( $3002, TDICOMElems3002.Create );
     Add( $3004, TDICOMElems3004.Create );
     Add( $3006, TDICOMElems3006.Create );
     Add( $3008, TDICOMElems3008.Create );
     Add( $300A, TDICOMElems300A.Create );
     Add( $300C, TDICOMElems300C.Create );
     Add( $300E, TDICOMElems300E.Create );
     Add( $4000, TDICOMElems4000.Create );
     Add( $4008, TDICOMElems4008.Create );
     Add( $4010, TDICOMElems4010.Create );
     Add( $4FFE, TDICOMElems4FFE.Create );
     Add( $5000, TDICOMElems50xx.Create );
     Add( $5200, TDICOMElems5200.Create );
     Add( $5400, TDICOMElems5400.Create );
     Add( $5600, TDICOMElems5600.Create );
     Add( $6000, TDICOMElems60xx.Create );
     Add( $7F00, TDICOMElems7Fxx.Create );
     Add( $7FE0, TDICOMElems7FE0.Create );
     Add( $FFFA, TDICOMElemsFFFA.Create );
     Add( $FFFC, TDICOMElemsFFFC.Create );
     Add( $FFFE, TDICOMElemsFFFE.Create );
end;

destructor TDICOMGrups.Destroy;
var
   V :TDICOMElems;
begin
     for V in Self.Values do V.Free;

     inherited;
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■