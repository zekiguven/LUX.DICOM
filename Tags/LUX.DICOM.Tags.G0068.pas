﻿unit LUX.DICOM.Tags.G0068;

interface //#################################################################### ■

uses LUX, LUX.DICOM.Tags, LUX.DICOM.VRs;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TDICOMElems0068

     TDICOMElems0068 = class( TDICOMElems )
     private
     protected
     public
       constructor Create;
     end;

//const //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【定数】

//var //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【変数】

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

implementation //############################################################### ■

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TDICOMElems0068

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& public

constructor TDICOMElems0068.Create;
begin
     inherited;

     // http://dicom.nema.org/medical/dicom/current/output/html/part06.html#chapter_6
     // 6 Registry of DICOM Data Elements
     Add( $6210, TKindVR.vrLO, 'Implant Size' );
     Add( $6221, TKindVR.vrLO, 'Implant Template Version' );
     Add( $6222, TKindVR.vrSQ, 'Replaced Implant Template Sequence' );
     Add( $6223, TKindVR.vrCS, 'Implant Type' );
     Add( $6224, TKindVR.vrSQ, 'Derivation Implant Template Sequence' );
     Add( $6225, TKindVR.vrSQ, 'Original Implant Template Sequence' );
     Add( $6226, TKindVR.vrDT, 'Effective DateTime' );
     Add( $6230, TKindVR.vrSQ, 'Implant Target Anatomy Sequence' );
     Add( $6260, TKindVR.vrSQ, 'Information From Manufacturer Sequence' );
     Add( $6265, TKindVR.vrSQ, 'Notification From Manufacturer Sequence' );
     Add( $6270, TKindVR.vrDT, 'Information Issue DateTime' );
     Add( $6280, TKindVR.vrST, 'Information Summary' );
     Add( $62A0, TKindVR.vrSQ, 'Implant Regulatory Disapproval Code Sequence' );
     Add( $62A5, TKindVR.vrFD, 'Overall Template Spatial Tolerance' );
     Add( $62C0, TKindVR.vrSQ, 'HPGL Document Sequence' );
     Add( $62D0, TKindVR.vrUS, 'HPGL Document ID' );
     Add( $62D5, TKindVR.vrLO, 'HPGL Document Label' );
     Add( $62E0, TKindVR.vrSQ, 'View Orientation Code Sequence' );
     Add( $62F0, TKindVR.vrFD, 'View Orientation Modifier' );
     Add( $62F2, TKindVR.vrFD, 'HPGL Document Scaling' );
     Add( $6300, TKindVR.vrOB, 'HPGL Document' );
     Add( $6310, TKindVR.vrUS, 'HPGL Contour Pen Number' );
     Add( $6320, TKindVR.vrSQ, 'HPGL Pen Sequence' );
     Add( $6330, TKindVR.vrUS, 'HPGL Pen Number' );
     Add( $6340, TKindVR.vrLO, 'HPGL Pen Label' );
     Add( $6345, TKindVR.vrST, 'HPGL Pen Description' );
     Add( $6346, TKindVR.vrFD, 'Recommended Rotation Point' );
     Add( $6347, TKindVR.vrFD, 'Bounding Rectangle' );
     Add( $6350, TKindVR.vrUS, 'Implant Template 3D Model Surface Number' );
     Add( $6360, TKindVR.vrSQ, 'Surface Model Description Sequence' );
     Add( $6380, TKindVR.vrLO, 'Surface Model Label' );
     Add( $6390, TKindVR.vrFD, 'Surface Model Scaling Factor' );
     Add( $63A0, TKindVR.vrSQ, 'Materials Code Sequence' );
     Add( $63A4, TKindVR.vrSQ, 'Coating Materials Code Sequence' );
     Add( $63A8, TKindVR.vrSQ, 'Implant Type Code Sequence' );
     Add( $63AC, TKindVR.vrSQ, 'Fixation Method Code Sequence' );
     Add( $63B0, TKindVR.vrSQ, 'Mating Feature Sets Sequence' );
     Add( $63C0, TKindVR.vrUS, 'Mating Feature Set ID' );
     Add( $63D0, TKindVR.vrLO, 'Mating Feature Set Label' );
     Add( $63E0, TKindVR.vrSQ, 'Mating Feature Sequence' );
     Add( $63F0, TKindVR.vrUS, 'Mating Feature ID' );
     Add( $6400, TKindVR.vrSQ, 'Mating Feature Degree of Freedom Sequence' );
     Add( $6410, TKindVR.vrUS, 'Degree of Freedom ID' );
     Add( $6420, TKindVR.vrCS, 'Degree of Freedom Type' );
     Add( $6430, TKindVR.vrSQ, '2D Mating Feature Coordinates Sequence' );
     Add( $6440, TKindVR.vrUS, 'Referenced HPGL Document ID' );
     Add( $6450, TKindVR.vrFD, '2D Mating Point' );
     Add( $6460, TKindVR.vrFD, '2D Mating Axes' );
     Add( $6470, TKindVR.vrSQ, '2D Degree of Freedom Sequence' );
     Add( $6490, TKindVR.vrFD, '3D Degree of Freedom Axis' );
     Add( $64A0, TKindVR.vrFD, 'Range of Freedom' );
     Add( $64C0, TKindVR.vrFD, '3D Mating Point' );
     Add( $64D0, TKindVR.vrFD, '3D Mating Axes' );
     Add( $64F0, TKindVR.vrFD, '2D Degree of Freedom Axis' );
     Add( $6500, TKindVR.vrSQ, 'Planning Landmark Point Sequence' );
     Add( $6510, TKindVR.vrSQ, 'Planning Landmark Line Sequence' );
     Add( $6520, TKindVR.vrSQ, 'Planning Landmark Plane Sequence' );
     Add( $6530, TKindVR.vrUS, 'Planning Landmark ID' );
     Add( $6540, TKindVR.vrLO, 'Planning Landmark Description' );
     Add( $6545, TKindVR.vrSQ, 'Planning Landmark Identification Code Sequence' );
     Add( $6550, TKindVR.vrSQ, '2D Point Coordinates Sequence' );
     Add( $6560, TKindVR.vrFD, '2D Point Coordinates' );
     Add( $6590, TKindVR.vrFD, '3D Point Coordinates' );
     Add( $65A0, TKindVR.vrSQ, '2D Line Coordinates Sequence' );
     Add( $65B0, TKindVR.vrFD, '2D Line Coordinates' );
     Add( $65D0, TKindVR.vrFD, '3D Line Coordinates' );
     Add( $65E0, TKindVR.vrSQ, '2D Plane Coordinates Sequence' );
     Add( $65F0, TKindVR.vrFD, '2D Plane Intersection' );
     Add( $6610, TKindVR.vrFD, '3D Plane Origin' );
     Add( $6620, TKindVR.vrFD, '3D Plane Normal' );
end;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■