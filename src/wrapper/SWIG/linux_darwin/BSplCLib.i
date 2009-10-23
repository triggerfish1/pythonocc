/*

Copyright 2008-2009 Thomas Paviot (tpaviot@gmail.com)

This file is part of pythonOCC.

pythonOCC is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

pythonOCC is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with pythonOCC.  If not, see <http://www.gnu.org/licenses/>.

*/
%module BSplCLib

%include BSplCLib_renames.i
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%pythoncode {
import GarbageCollector
};

%include BSplCLib_dependencies.i


%include BSplCLib_headers.i


enum BSplCLib_KnotDistribution {
	BSplCLib_NonUniform,
	BSplCLib_Uniform,
	};

enum BSplCLib_MultDistribution {
	BSplCLib_NonConstant,
	BSplCLib_Constant,
	BSplCLib_QuasiConstant,
	};



%nodefaultctor BSplCLib;
class BSplCLib {
	public:
		%feature("autodoc", "1");
		BSplCLib();
		%feature("autodoc","Hunt(const XX, Standard_Real X) -> Standard_Integer");
		void Hunt(const TColStd_Array1OfReal &XX, const Standard_Real X, Standard_Integer &OutValue);
		%feature("autodoc", "1");
		Standard_Integer FirstUKnotIndex(const Standard_Integer Degree, const TColStd_Array1OfInteger &Mults);
		%feature("autodoc", "1");
		Standard_Integer LastUKnotIndex(const Standard_Integer Degree, const TColStd_Array1OfInteger &Mults);
		%feature("autodoc", "1");
		Standard_Integer FlatIndex(const Standard_Integer Degree, const Standard_Integer Index, const TColStd_Array1OfInteger &Mults, const Standard_Boolean Periodic);
		%feature("autodoc","LocateParameter(Standard_Integer Degree, const Knots, const Mults, Standard_Real U, Standard_Boolean IsPeriodic, Standard_Integer FromK1, Standard_Integer ToK2) -> [Standard_IntegerStandard_Real]");
		void LocateParameter(const Standard_Integer Degree, const TColStd_Array1OfReal &Knots, const TColStd_Array1OfInteger &Mults, const Standard_Real U, const Standard_Boolean IsPeriodic, const Standard_Integer FromK1, const Standard_Integer ToK2, Standard_Integer &OutValue, Standard_Real &OutValue);
		%feature("autodoc","LocateParameter(Standard_Integer Degree, const Knots, Standard_Real U, Standard_Boolean IsPeriodic, Standard_Integer FromK1, Standard_Integer ToK2) -> [Standard_IntegerStandard_Real]");
		void LocateParameter(const Standard_Integer Degree, const TColStd_Array1OfReal &Knots, const Standard_Real U, const Standard_Boolean IsPeriodic, const Standard_Integer FromK1, const Standard_Integer ToK2, Standard_Integer &OutValue, Standard_Real &OutValue);
		%feature("autodoc","LocateParameter(Standard_Integer Degree, const Knots, const Mults, Standard_Real U, Standard_Boolean Periodic) -> [Standard_IntegerStandard_Real]");
		void LocateParameter(const Standard_Integer Degree, const TColStd_Array1OfReal &Knots, const TColStd_Array1OfInteger &Mults, const Standard_Real U, const Standard_Boolean Periodic, Standard_Integer &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		Standard_Integer MaxKnotMult(const TColStd_Array1OfInteger &Mults, const Standard_Integer K1, const Standard_Integer K2);
		%feature("autodoc", "1");
		Standard_Integer MinKnotMult(const TColStd_Array1OfInteger &Mults, const Standard_Integer K1, const Standard_Integer K2);
		%feature("autodoc", "1");
		Standard_Integer NbPoles(const Standard_Integer Degree, const Standard_Boolean Periodic, const TColStd_Array1OfInteger &Mults);
		%feature("autodoc", "1");
		Standard_Integer KnotSequenceLength(const TColStd_Array1OfInteger &Mults, const Standard_Integer Degree, const Standard_Boolean Periodic);
		%feature("autodoc", "1");
		void KnotSequence(const TColStd_Array1OfReal &Knots, const TColStd_Array1OfInteger &Mults, TColStd_Array1OfReal & KnotSeq);
		%feature("autodoc", "1");
		void KnotSequence(const TColStd_Array1OfReal &Knots, const TColStd_Array1OfInteger &Mults, const Standard_Integer Degree, const Standard_Boolean Periodic, TColStd_Array1OfReal & KnotSeq);
		%feature("autodoc", "1");
		Standard_Integer KnotsLength(const TColStd_Array1OfReal &KnotSeq, const Standard_Boolean Periodic=0);
		%feature("autodoc", "1");
		void Knots(const TColStd_Array1OfReal &KnotSeq, TColStd_Array1OfReal & Knots, TColStd_Array1OfInteger & Mults, const Standard_Boolean Periodic=0);
		%feature("autodoc", "1");
		BSplCLib_KnotDistribution KnotForm(const TColStd_Array1OfReal &Knots, const Standard_Integer FromK1, const Standard_Integer ToK2);
		%feature("autodoc", "1");
		BSplCLib_MultDistribution MultForm(const TColStd_Array1OfInteger &Mults, const Standard_Integer FromK1, const Standard_Integer ToK2);
		%feature("autodoc", "1");
		void Reparametrize(const Standard_Real U1, const Standard_Real U2, TColStd_Array1OfReal & Knots);
		%feature("autodoc", "1");
		void Reverse(TColStd_Array1OfReal & Knots);
		%feature("autodoc", "1");
		void Reverse(TColStd_Array1OfInteger & Mults);
		%feature("autodoc", "1");
		void Reverse(TColgp_Array1OfPnt & Poles, const Standard_Integer Last);
		%feature("autodoc", "1");
		void Reverse(TColgp_Array1OfPnt2d & Poles, const Standard_Integer Last);
		%feature("autodoc", "1");
		void Reverse(TColStd_Array1OfReal & Weights, const Standard_Integer Last);
		%feature("autodoc", "1");
		Standard_Boolean IsRational(const TColStd_Array1OfReal &Weights, const Standard_Integer I1, const Standard_Integer I2, const Standard_Real Epsilon=0.0);
		%feature("autodoc", "1");
		Standard_Integer MaxDegree();
		%feature("autodoc","Eval(Standard_Real U, Standard_Integer Degree, Standard_Integer Dimension) -> [Standard_RealStandard_Real]");
		void Eval(const Standard_Real U, const Standard_Integer Degree, Standard_Real &OutValue, const Standard_Integer Dimension, Standard_Real &OutValue);
		%feature("autodoc","BoorScheme(Standard_Real U, Standard_Integer Degree, Standard_Integer Dimension, Standard_Integer Depth, Standard_Integer Length) -> [Standard_RealStandard_Real]");
		void BoorScheme(const Standard_Real U, const Standard_Integer Degree, Standard_Real &OutValue, const Standard_Integer Dimension, Standard_Real &OutValue, const Standard_Integer Depth, const Standard_Integer Length);
		%feature("autodoc","AntiBoorScheme(Standard_Real U, Standard_Integer Degree, Standard_Integer Dimension, Standard_Integer Depth, Standard_Integer Length, Standard_Real Tolerance) -> [Standard_RealStandard_Real]");
		Standard_Boolean AntiBoorScheme(const Standard_Real U, const Standard_Integer Degree, Standard_Real &OutValue, const Standard_Integer Dimension, Standard_Real &OutValue, const Standard_Integer Depth, const Standard_Integer Length, const Standard_Real Tolerance);
		%feature("autodoc","Derivative(Standard_Integer Degree, Standard_Integer Dimension, Standard_Integer Length, Standard_Integer Order) -> [Standard_RealStandard_Real]");
		void Derivative(const Standard_Integer Degree, Standard_Real &OutValue, const Standard_Integer Dimension, const Standard_Integer Length, const Standard_Integer Order, Standard_Real &OutValue);
		%feature("autodoc","Bohm(Standard_Real U, Standard_Integer Degree, Standard_Integer N, Standard_Integer Dimension) -> [Standard_RealStandard_Real]");
		void Bohm(const Standard_Real U, const Standard_Integer Degree, const Standard_Integer N, Standard_Real &OutValue, const Standard_Integer Dimension, Standard_Real &OutValue);
		%feature("autodoc", "1");
		TColStd_Array1OfReal & NoWeights();
		%feature("autodoc", "1");
		TColStd_Array1OfInteger & NoMults();
		%feature("autodoc","BuildKnots(Standard_Integer Degree, Standard_Integer Index, Standard_Boolean Periodic, const Knots, const Mults) -> Standard_Real");
		void BuildKnots(const Standard_Integer Degree, const Standard_Integer Index, const Standard_Boolean Periodic, const TColStd_Array1OfReal &Knots, const TColStd_Array1OfInteger &Mults, Standard_Real &OutValue);
		%feature("autodoc", "1");
		Standard_Integer PoleIndex(const Standard_Integer Degree, const Standard_Integer Index, const Standard_Boolean Periodic, const TColStd_Array1OfInteger &Mults);
		%feature("autodoc","BuildEval(Standard_Integer Degree, Standard_Integer Index, const Poles, const Weights) -> Standard_Real");
		void BuildEval(const Standard_Integer Degree, const Standard_Integer Index, const TColStd_Array1OfReal &Poles, const TColStd_Array1OfReal &Weights, Standard_Real &OutValue);
		%feature("autodoc","BuildEval(Standard_Integer Degree, Standard_Integer Index, const Poles, const Weights) -> Standard_Real");
		void BuildEval(const Standard_Integer Degree, const Standard_Integer Index, const TColgp_Array1OfPnt &Poles, const TColStd_Array1OfReal &Weights, Standard_Real &OutValue);
		%feature("autodoc","BuildEval(Standard_Integer Degree, Standard_Integer Index, const Poles, const Weights) -> Standard_Real");
		void BuildEval(const Standard_Integer Degree, const Standard_Integer Index, const TColgp_Array1OfPnt2d &Poles, const TColStd_Array1OfReal &Weights, Standard_Real &OutValue);
		%feature("autodoc","BuildBoor(Standard_Integer Index, Standard_Integer Length, Standard_Integer Dimension, const Poles) -> Standard_Real");
		void BuildBoor(const Standard_Integer Index, const Standard_Integer Length, const Standard_Integer Dimension, const TColStd_Array1OfReal &Poles, Standard_Real &OutValue);
		%feature("autodoc", "1");
		Standard_Integer BoorIndex(const Standard_Integer Index, const Standard_Integer Length, const Standard_Integer Depth);
		%feature("autodoc","GetPole(Standard_Integer Index, Standard_Integer Length, Standard_Integer Depth, Standard_Integer Dimension) -> [Standard_RealStandard_Integer]");
		void GetPole(const Standard_Integer Index, const Standard_Integer Length, const Standard_Integer Depth, const Standard_Integer Dimension, Standard_Real &OutValue, Standard_Integer &OutValue, TColStd_Array1OfReal & Pole);
		%feature("autodoc","PrepareInsertKnots(Standard_Integer Degree, Standard_Boolean Periodic, const Knots, const Mults, const AddKnots, const AddMults, Standard_Real Epsilon, Standard_Boolean Add=1) -> [Standard_IntegerStandard_Integer]");
		Standard_Boolean PrepareInsertKnots(const Standard_Integer Degree, const Standard_Boolean Periodic, const TColStd_Array1OfReal &Knots, const TColStd_Array1OfInteger &Mults, const TColStd_Array1OfReal &AddKnots, const TColStd_Array1OfInteger &AddMults, Standard_Integer &OutValue, Standard_Integer &OutValue, const Standard_Real Epsilon, const Standard_Boolean Add=1);
		%feature("autodoc", "1");
		void InsertKnots(const Standard_Integer Degree, const Standard_Boolean Periodic, const Standard_Integer Dimension, const TColStd_Array1OfReal &Poles, const TColStd_Array1OfReal &Knots, const TColStd_Array1OfInteger &Mults, const TColStd_Array1OfReal &AddKnots, const TColStd_Array1OfInteger &AddMults, TColStd_Array1OfReal & NewPoles, TColStd_Array1OfReal & NewKnots, TColStd_Array1OfInteger & NewMults, const Standard_Real Epsilon, const Standard_Boolean Add=1);
		%feature("autodoc", "1");
		void InsertKnots(const Standard_Integer Degree, const Standard_Boolean Periodic, const TColgp_Array1OfPnt &Poles, const TColStd_Array1OfReal &Weights, const TColStd_Array1OfReal &Knots, const TColStd_Array1OfInteger &Mults, const TColStd_Array1OfReal &AddKnots, const TColStd_Array1OfInteger &AddMults, TColgp_Array1OfPnt & NewPoles, TColStd_Array1OfReal & NewWeights, TColStd_Array1OfReal & NewKnots, TColStd_Array1OfInteger & NewMults, const Standard_Real Epsilon, const Standard_Boolean Add=1);
		%feature("autodoc", "1");
		void InsertKnots(const Standard_Integer Degree, const Standard_Boolean Periodic, const TColgp_Array1OfPnt2d &Poles, const TColStd_Array1OfReal &Weights, const TColStd_Array1OfReal &Knots, const TColStd_Array1OfInteger &Mults, const TColStd_Array1OfReal &AddKnots, const TColStd_Array1OfInteger &AddMults, TColgp_Array1OfPnt2d & NewPoles, TColStd_Array1OfReal & NewWeights, TColStd_Array1OfReal & NewKnots, TColStd_Array1OfInteger & NewMults, const Standard_Real Epsilon, const Standard_Boolean Add=1);
		%feature("autodoc", "1");
		void InsertKnot(const Standard_Integer UIndex, const Standard_Real U, const Standard_Integer UMult, const Standard_Integer Degree, const Standard_Boolean Periodic, const TColgp_Array1OfPnt &Poles, const TColStd_Array1OfReal &Weights, const TColStd_Array1OfReal &Knots, const TColStd_Array1OfInteger &Mults, TColgp_Array1OfPnt & NewPoles, TColStd_Array1OfReal & NewWeights);
		%feature("autodoc", "1");
		void InsertKnot(const Standard_Integer UIndex, const Standard_Real U, const Standard_Integer UMult, const Standard_Integer Degree, const Standard_Boolean Periodic, const TColgp_Array1OfPnt2d &Poles, const TColStd_Array1OfReal &Weights, const TColStd_Array1OfReal &Knots, const TColStd_Array1OfInteger &Mults, TColgp_Array1OfPnt2d & NewPoles, TColStd_Array1OfReal & NewWeights);
		%feature("autodoc", "1");
		void RaiseMultiplicity(const Standard_Integer KnotIndex, const Standard_Integer Mult, const Standard_Integer Degree, const Standard_Boolean Periodic, const TColgp_Array1OfPnt &Poles, const TColStd_Array1OfReal &Weights, const TColStd_Array1OfReal &Knots, const TColStd_Array1OfInteger &Mults, TColgp_Array1OfPnt & NewPoles, TColStd_Array1OfReal & NewWeights);
		%feature("autodoc", "1");
		void RaiseMultiplicity(const Standard_Integer KnotIndex, const Standard_Integer Mult, const Standard_Integer Degree, const Standard_Boolean Periodic, const TColgp_Array1OfPnt2d &Poles, const TColStd_Array1OfReal &Weights, const TColStd_Array1OfReal &Knots, const TColStd_Array1OfInteger &Mults, TColgp_Array1OfPnt2d & NewPoles, TColStd_Array1OfReal & NewWeights);
		%feature("autodoc", "1");
		Standard_Boolean RemoveKnot(const Standard_Integer Index, const Standard_Integer Mult, const Standard_Integer Degree, const Standard_Boolean Periodic, const Standard_Integer Dimension, const TColStd_Array1OfReal &Poles, const TColStd_Array1OfReal &Knots, const TColStd_Array1OfInteger &Mults, TColStd_Array1OfReal & NewPoles, TColStd_Array1OfReal & NewKnots, TColStd_Array1OfInteger & NewMults, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		Standard_Boolean RemoveKnot(const Standard_Integer Index, const Standard_Integer Mult, const Standard_Integer Degree, const Standard_Boolean Periodic, const TColgp_Array1OfPnt &Poles, const TColStd_Array1OfReal &Weights, const TColStd_Array1OfReal &Knots, const TColStd_Array1OfInteger &Mults, TColgp_Array1OfPnt & NewPoles, TColStd_Array1OfReal & NewWeights, TColStd_Array1OfReal & NewKnots, TColStd_Array1OfInteger & NewMults, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		Standard_Boolean RemoveKnot(const Standard_Integer Index, const Standard_Integer Mult, const Standard_Integer Degree, const Standard_Boolean Periodic, const TColgp_Array1OfPnt2d &Poles, const TColStd_Array1OfReal &Weights, const TColStd_Array1OfReal &Knots, const TColStd_Array1OfInteger &Mults, TColgp_Array1OfPnt2d & NewPoles, TColStd_Array1OfReal & NewWeights, TColStd_Array1OfReal & NewKnots, TColStd_Array1OfInteger & NewMults, const Standard_Real Tolerance);
		%feature("autodoc", "1");
		Standard_Integer IncreaseDegreeCountKnots(const Standard_Integer Degree, const Standard_Integer NewDegree, const Standard_Boolean Periodic, const TColStd_Array1OfInteger &Mults);
		%feature("autodoc", "1");
		void IncreaseDegree(const Standard_Integer Degree, const Standard_Integer NewDegree, const Standard_Boolean Periodic, const Standard_Integer Dimension, const TColStd_Array1OfReal &Poles, const TColStd_Array1OfReal &Knots, const TColStd_Array1OfInteger &Mults, TColStd_Array1OfReal & NewPoles, TColStd_Array1OfReal & NewKnots, TColStd_Array1OfInteger & NewMults);
		%feature("autodoc", "1");
		void IncreaseDegree(const Standard_Integer Degree, const Standard_Integer NewDegree, const Standard_Boolean Periodic, const TColgp_Array1OfPnt &Poles, const TColStd_Array1OfReal &Weights, const TColStd_Array1OfReal &Knots, const TColStd_Array1OfInteger &Mults, TColgp_Array1OfPnt & NewPoles, TColStd_Array1OfReal & NewWeights, TColStd_Array1OfReal & NewKnots, TColStd_Array1OfInteger & NewMults);
		%feature("autodoc", "1");
		void IncreaseDegree(const Standard_Integer Degree, const Standard_Integer NewDegree, const Standard_Boolean Periodic, const TColgp_Array1OfPnt2d &Poles, const TColStd_Array1OfReal &Weights, const TColStd_Array1OfReal &Knots, const TColStd_Array1OfInteger &Mults, TColgp_Array1OfPnt2d & NewPoles, TColStd_Array1OfReal & NewWeights, TColStd_Array1OfReal & NewKnots, TColStd_Array1OfInteger & NewMults);
		%feature("autodoc", "1");
		void IncreaseDegree(const Standard_Integer NewDegree, const TColgp_Array1OfPnt &Poles, const TColStd_Array1OfReal &Weights, TColgp_Array1OfPnt & NewPoles, TColStd_Array1OfReal & NewWeights);
		%feature("autodoc", "1");
		void IncreaseDegree(const Standard_Integer NewDegree, const TColgp_Array1OfPnt2d &Poles, const TColStd_Array1OfReal &Weights, TColgp_Array1OfPnt2d & NewPoles, TColStd_Array1OfReal & NewWeights);
		%feature("autodoc","PrepareUnperiodize(Standard_Integer Degree, const Mults) -> [Standard_IntegerStandard_Integer]");
		void PrepareUnperiodize(const Standard_Integer Degree, const TColStd_Array1OfInteger &Mults, Standard_Integer &OutValue, Standard_Integer &OutValue);
		%feature("autodoc", "1");
		void Unperiodize(const Standard_Integer Degree, const Standard_Integer Dimension, const TColStd_Array1OfInteger &Mults, const TColStd_Array1OfReal &Knots, const TColStd_Array1OfReal &Poles, TColStd_Array1OfInteger & NewMults, TColStd_Array1OfReal & NewKnots, TColStd_Array1OfReal & NewPoles);
		%feature("autodoc", "1");
		void Unperiodize(const Standard_Integer Degree, const TColStd_Array1OfInteger &Mults, const TColStd_Array1OfReal &Knots, const TColgp_Array1OfPnt &Poles, const TColStd_Array1OfReal &Weights, TColStd_Array1OfInteger & NewMults, TColStd_Array1OfReal & NewKnots, TColgp_Array1OfPnt & NewPoles, TColStd_Array1OfReal & NewWeights);
		%feature("autodoc", "1");
		void Unperiodize(const Standard_Integer Degree, const TColStd_Array1OfInteger &Mults, const TColStd_Array1OfReal &Knots, const TColgp_Array1OfPnt2d &Poles, const TColStd_Array1OfReal &Weights, TColStd_Array1OfInteger & NewMults, TColStd_Array1OfReal & NewKnots, TColgp_Array1OfPnt2d & NewPoles, TColStd_Array1OfReal & NewWeights);
		%feature("autodoc","PrepareTrimming(Standard_Integer Degree, Standard_Boolean Periodic, const Knots, const Mults, Standard_Real U1, Standard_Real U2) -> [Standard_IntegerStandard_Integer]");
		void PrepareTrimming(const Standard_Integer Degree, const Standard_Boolean Periodic, const TColStd_Array1OfReal &Knots, const TColStd_Array1OfInteger &Mults, const Standard_Real U1, const Standard_Real U2, Standard_Integer &OutValue, Standard_Integer &OutValue);
		%feature("autodoc", "1");
		void Trimming(const Standard_Integer Degree, const Standard_Boolean Periodic, const Standard_Integer Dimension, const TColStd_Array1OfReal &Knots, const TColStd_Array1OfInteger &Mults, const TColStd_Array1OfReal &Poles, const Standard_Real U1, const Standard_Real U2, TColStd_Array1OfReal & NewKnots, TColStd_Array1OfInteger & NewMults, TColStd_Array1OfReal & NewPoles);
		%feature("autodoc", "1");
		void Trimming(const Standard_Integer Degree, const Standard_Boolean Periodic, const TColStd_Array1OfReal &Knots, const TColStd_Array1OfInteger &Mults, const TColgp_Array1OfPnt &Poles, const TColStd_Array1OfReal &Weights, const Standard_Real U1, const Standard_Real U2, TColStd_Array1OfReal & NewKnots, TColStd_Array1OfInteger & NewMults, TColgp_Array1OfPnt & NewPoles, TColStd_Array1OfReal & NewWeights);
		%feature("autodoc", "1");
		void Trimming(const Standard_Integer Degree, const Standard_Boolean Periodic, const TColStd_Array1OfReal &Knots, const TColStd_Array1OfInteger &Mults, const TColgp_Array1OfPnt2d &Poles, const TColStd_Array1OfReal &Weights, const Standard_Real U1, const Standard_Real U2, TColStd_Array1OfReal & NewKnots, TColStd_Array1OfInteger & NewMults, TColgp_Array1OfPnt2d & NewPoles, TColStd_Array1OfReal & NewWeights);
		%feature("autodoc","D0(Standard_Real U, Standard_Integer Index, Standard_Integer Degree, Standard_Boolean Periodic, const Poles, const Weights, const Knots, const Mults) -> Standard_Real");
		void D0(const Standard_Real U, const Standard_Integer Index, const Standard_Integer Degree, const Standard_Boolean Periodic, const TColStd_Array1OfReal &Poles, const TColStd_Array1OfReal &Weights, const TColStd_Array1OfReal &Knots, const TColStd_Array1OfInteger &Mults, Standard_Real &OutValue);
		%feature("autodoc", "1");
		void D0(const Standard_Real U, const Standard_Integer Index, const Standard_Integer Degree, const Standard_Boolean Periodic, const TColgp_Array1OfPnt &Poles, const TColStd_Array1OfReal &Weights, const TColStd_Array1OfReal &Knots, const TColStd_Array1OfInteger &Mults, gp_Pnt & P);
		%feature("autodoc", "1");
		void D0(const Standard_Real U, const Standard_Integer UIndex, const Standard_Integer Degree, const Standard_Boolean Periodic, const TColgp_Array1OfPnt2d &Poles, const TColStd_Array1OfReal &Weights, const TColStd_Array1OfReal &Knots, const TColStd_Array1OfInteger &Mults, gp_Pnt2d & P);
		%feature("autodoc", "1");
		void D0(const Standard_Real U, const TColgp_Array1OfPnt &Poles, const TColStd_Array1OfReal &Weights, gp_Pnt & P);
		%feature("autodoc", "1");
		void D0(const Standard_Real U, const TColgp_Array1OfPnt2d &Poles, const TColStd_Array1OfReal &Weights, gp_Pnt2d & P);
		%feature("autodoc","D1(Standard_Real U, Standard_Integer Index, Standard_Integer Degree, Standard_Boolean Periodic, const Poles, const Weights, const Knots, const Mults) -> [Standard_RealStandard_Real]");
		void D1(const Standard_Real U, const Standard_Integer Index, const Standard_Integer Degree, const Standard_Boolean Periodic, const TColStd_Array1OfReal &Poles, const TColStd_Array1OfReal &Weights, const TColStd_Array1OfReal &Knots, const TColStd_Array1OfInteger &Mults, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		void D1(const Standard_Real U, const Standard_Integer Index, const Standard_Integer Degree, const Standard_Boolean Periodic, const TColgp_Array1OfPnt &Poles, const TColStd_Array1OfReal &Weights, const TColStd_Array1OfReal &Knots, const TColStd_Array1OfInteger &Mults, gp_Pnt & P, gp_Vec & V);
		%feature("autodoc", "1");
		void D1(const Standard_Real U, const Standard_Integer UIndex, const Standard_Integer Degree, const Standard_Boolean Periodic, const TColgp_Array1OfPnt2d &Poles, const TColStd_Array1OfReal &Weights, const TColStd_Array1OfReal &Knots, const TColStd_Array1OfInteger &Mults, gp_Pnt2d & P, gp_Vec2d & V);
		%feature("autodoc", "1");
		void D1(const Standard_Real U, const TColgp_Array1OfPnt &Poles, const TColStd_Array1OfReal &Weights, gp_Pnt & P, gp_Vec & V);
		%feature("autodoc", "1");
		void D1(const Standard_Real U, const TColgp_Array1OfPnt2d &Poles, const TColStd_Array1OfReal &Weights, gp_Pnt2d & P, gp_Vec2d & V);
		%feature("autodoc","D2(Standard_Real U, Standard_Integer Index, Standard_Integer Degree, Standard_Boolean Periodic, const Poles, const Weights, const Knots, const Mults) -> [Standard_RealStandard_RealStandard_Real]");
		void D2(const Standard_Real U, const Standard_Integer Index, const Standard_Integer Degree, const Standard_Boolean Periodic, const TColStd_Array1OfReal &Poles, const TColStd_Array1OfReal &Weights, const TColStd_Array1OfReal &Knots, const TColStd_Array1OfInteger &Mults, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		void D2(const Standard_Real U, const Standard_Integer Index, const Standard_Integer Degree, const Standard_Boolean Periodic, const TColgp_Array1OfPnt &Poles, const TColStd_Array1OfReal &Weights, const TColStd_Array1OfReal &Knots, const TColStd_Array1OfInteger &Mults, gp_Pnt & P, gp_Vec & V1, gp_Vec & V2);
		%feature("autodoc", "1");
		void D2(const Standard_Real U, const Standard_Integer UIndex, const Standard_Integer Degree, const Standard_Boolean Periodic, const TColgp_Array1OfPnt2d &Poles, const TColStd_Array1OfReal &Weights, const TColStd_Array1OfReal &Knots, const TColStd_Array1OfInteger &Mults, gp_Pnt2d & P, gp_Vec2d & V1, gp_Vec2d & V2);
		%feature("autodoc", "1");
		void D2(const Standard_Real U, const TColgp_Array1OfPnt &Poles, const TColStd_Array1OfReal &Weights, gp_Pnt & P, gp_Vec & V1, gp_Vec & V2);
		%feature("autodoc", "1");
		void D2(const Standard_Real U, const TColgp_Array1OfPnt2d &Poles, const TColStd_Array1OfReal &Weights, gp_Pnt2d & P, gp_Vec2d & V1, gp_Vec2d & V2);
		%feature("autodoc","D3(Standard_Real U, Standard_Integer Index, Standard_Integer Degree, Standard_Boolean Periodic, const Poles, const Weights, const Knots, const Mults) -> [Standard_RealStandard_RealStandard_RealStandard_Real]");
		void D3(const Standard_Real U, const Standard_Integer Index, const Standard_Integer Degree, const Standard_Boolean Periodic, const TColStd_Array1OfReal &Poles, const TColStd_Array1OfReal &Weights, const TColStd_Array1OfReal &Knots, const TColStd_Array1OfInteger &Mults, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		void D3(const Standard_Real U, const Standard_Integer Index, const Standard_Integer Degree, const Standard_Boolean Periodic, const TColgp_Array1OfPnt &Poles, const TColStd_Array1OfReal &Weights, const TColStd_Array1OfReal &Knots, const TColStd_Array1OfInteger &Mults, gp_Pnt & P, gp_Vec & V1, gp_Vec & V2, gp_Vec & V3);
		%feature("autodoc", "1");
		void D3(const Standard_Real U, const Standard_Integer UIndex, const Standard_Integer Degree, const Standard_Boolean Periodic, const TColgp_Array1OfPnt2d &Poles, const TColStd_Array1OfReal &Weights, const TColStd_Array1OfReal &Knots, const TColStd_Array1OfInteger &Mults, gp_Pnt2d & P, gp_Vec2d & V1, gp_Vec2d & V2, gp_Vec2d & V3);
		%feature("autodoc", "1");
		void D3(const Standard_Real U, const TColgp_Array1OfPnt &Poles, const TColStd_Array1OfReal &Weights, gp_Pnt & P, gp_Vec & V1, gp_Vec & V2, gp_Vec & V3);
		%feature("autodoc", "1");
		void D3(const Standard_Real U, const TColgp_Array1OfPnt2d &Poles, const TColStd_Array1OfReal &Weights, gp_Pnt2d & P, gp_Vec2d & V1, gp_Vec2d & V2, gp_Vec2d & V3);
		%feature("autodoc","EvalBsplineBasis(Standard_Integer Side, Standard_Integer DerivativeOrder, Standard_Integer Order, const FlatKnots, Standard_Real Parameter) -> Standard_Integer");
		Standard_Integer EvalBsplineBasis(const Standard_Integer Side, const Standard_Integer DerivativeOrder, const Standard_Integer Order, const TColStd_Array1OfReal &FlatKnots, const Standard_Real Parameter, Standard_Integer &OutValue, math_Matrix & BsplineBasis);
		%feature("autodoc","BuildBSpMatrix(const Parameters, const OrderArray, const FlatKnots, Standard_Integer Degree) -> [Standard_IntegerStandard_Integer]");
		Standard_Integer BuildBSpMatrix(const TColStd_Array1OfReal &Parameters, const TColStd_Array1OfInteger &OrderArray, const TColStd_Array1OfReal &FlatKnots, const Standard_Integer Degree, math_Matrix & Matrix, Standard_Integer &OutValue, Standard_Integer &OutValue);
		%feature("autodoc","FactorBandedMatrix(Standard_Integer UpperBandWidth, Standard_Integer LowerBandWidth) -> Standard_Integer");
		Standard_Integer FactorBandedMatrix(math_Matrix & Matrix, const Standard_Integer UpperBandWidth, const Standard_Integer LowerBandWidth, Standard_Integer &OutValue);
		%feature("autodoc","SolveBandedSystem(const Matrix, Standard_Integer UpperBandWidth, Standard_Integer LowerBandWidth, Standard_Integer ArrayDimension) -> Standard_Real");
		Standard_Integer SolveBandedSystem(const math_Matrix &Matrix, const Standard_Integer UpperBandWidth, const Standard_Integer LowerBandWidth, const Standard_Integer ArrayDimension, Standard_Real &OutValue);
		%feature("autodoc", "1");
		Standard_Integer SolveBandedSystem(const math_Matrix &Matrix, const Standard_Integer UpperBandWidth, const Standard_Integer LowerBandWidth, TColgp_Array1OfPnt2d & Array);
		%feature("autodoc", "1");
		Standard_Integer SolveBandedSystem(const math_Matrix &Matrix, const Standard_Integer UpperBandWidth, const Standard_Integer LowerBandWidth, TColgp_Array1OfPnt & Array);
		%feature("autodoc","SolveBandedSystem(const Matrix, Standard_Integer UpperBandWidth, Standard_Integer LowerBandWidth, Standard_Boolean HomogenousFlag, Standard_Integer ArrayDimension) -> [Standard_RealStandard_Real]");
		Standard_Integer SolveBandedSystem(const math_Matrix &Matrix, const Standard_Integer UpperBandWidth, const Standard_Integer LowerBandWidth, const Standard_Boolean HomogenousFlag, const Standard_Integer ArrayDimension, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		Standard_Integer SolveBandedSystem(const math_Matrix &Matrix, const Standard_Integer UpperBandWidth, const Standard_Integer LowerBandWidth, const Standard_Boolean HomogenousFlag, TColgp_Array1OfPnt2d & Array, TColStd_Array1OfReal & Weights);
		%feature("autodoc", "1");
		Standard_Integer SolveBandedSystem(const math_Matrix &Matrix, const Standard_Integer UpperBandWidth, const Standard_Integer LowerBandWidth, const Standard_Boolean HomogeneousFlag, TColgp_Array1OfPnt & Array, TColStd_Array1OfReal & Weights);
		%feature("autodoc","MergeBSplineKnots(Standard_Real Tolerance, Standard_Real StartValue, Standard_Real EndValue, Standard_Integer Degree1, const Knots1, const Mults1, Standard_Integer Degree2, const Knots2, const Mults2) -> Standard_Integer");
		void MergeBSplineKnots(const Standard_Real Tolerance, const Standard_Real StartValue, const Standard_Real EndValue, const Standard_Integer Degree1, const TColStd_Array1OfReal &Knots1, const TColStd_Array1OfInteger &Mults1, const Standard_Integer Degree2, const TColStd_Array1OfReal &Knots2, const TColStd_Array1OfInteger &Mults2, Standard_Integer &OutValue, Handle_TColStd_HArray1OfReal & NewKnots, Handle_TColStd_HArray1OfInteger & NewMults);
		%feature("autodoc","Eval(Standard_Real U, Standard_Boolean PeriodicFlag, Standard_Integer DerivativeRequest, Standard_Integer Degree, const FlatKnots, Standard_Integer ArrayDimension) -> [Standard_IntegerStandard_RealStandard_Real]");
		void Eval(const Standard_Real U, const Standard_Boolean PeriodicFlag, const Standard_Integer DerivativeRequest, Standard_Integer &OutValue, const Standard_Integer Degree, const TColStd_Array1OfReal &FlatKnots, const Standard_Integer ArrayDimension, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc","Eval(Standard_Real U, Standard_Boolean PeriodicFlag, Standard_Integer DerivativeRequest, Standard_Integer Degree, const FlatKnots, Standard_Integer ArrayDimension) -> [Standard_IntegerStandard_RealStandard_RealStandard_RealStandard_Real]");
		void Eval(const Standard_Real U, const Standard_Boolean PeriodicFlag, const Standard_Integer DerivativeRequest, Standard_Integer &OutValue, const Standard_Integer Degree, const TColStd_Array1OfReal &FlatKnots, const Standard_Integer ArrayDimension, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc","Eval(Standard_Real U, Standard_Boolean PeriodicFlag, Standard_Boolean HomogeneousFlag, Standard_Integer Degree, const FlatKnots, const Poles, const Weights) -> [Standard_IntegerStandard_Real]");
		void Eval(const Standard_Real U, const Standard_Boolean PeriodicFlag, const Standard_Boolean HomogeneousFlag, Standard_Integer &OutValue, const Standard_Integer Degree, const TColStd_Array1OfReal &FlatKnots, const TColgp_Array1OfPnt &Poles, const TColStd_Array1OfReal &Weights, gp_Pnt & Point, Standard_Real &OutValue);
		%feature("autodoc","Eval(Standard_Real U, Standard_Boolean PeriodicFlag, Standard_Boolean HomogeneousFlag, Standard_Integer Degree, const FlatKnots, const Poles, const Weights) -> [Standard_IntegerStandard_Real]");
		void Eval(const Standard_Real U, const Standard_Boolean PeriodicFlag, const Standard_Boolean HomogeneousFlag, Standard_Integer &OutValue, const Standard_Integer Degree, const TColStd_Array1OfReal &FlatKnots, const TColgp_Array1OfPnt2d &Poles, const TColStd_Array1OfReal &Weights, gp_Pnt2d & Point, Standard_Real &OutValue);
		%feature("autodoc","TangExtendToConstraint(const FlatKnots, Standard_Real C1Coefficient, Standard_Integer NumPoles, Standard_Integer Dimension, Standard_Integer Degree, const ConstraintPoint, Standard_Integer Continuity, Standard_Boolean After) -> [Standard_RealStandard_IntegerStandard_IntegerStandard_RealStandard_Real]");
		void TangExtendToConstraint(const TColStd_Array1OfReal &FlatKnots, const Standard_Real C1Coefficient, const Standard_Integer NumPoles, Standard_Real &OutValue, const Standard_Integer Dimension, const Standard_Integer Degree, const TColStd_Array1OfReal &ConstraintPoint, const Standard_Integer Continuity, const Standard_Boolean After, Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		void CacheD0(const Standard_Real U, const Standard_Integer Degree, const Standard_Real CacheParameter, const Standard_Real SpanLenght, const TColgp_Array1OfPnt &Poles, const TColStd_Array1OfReal &Weights, gp_Pnt & Point);
		%feature("autodoc", "1");
		void CacheD0(const Standard_Real U, const Standard_Integer Degree, const Standard_Real CacheParameter, const Standard_Real SpanLenght, const TColgp_Array1OfPnt2d &Poles, const TColStd_Array1OfReal &Weights, gp_Pnt2d & Point);
		%feature("autodoc", "1");
		void CoefsD0(const Standard_Real U, const TColgp_Array1OfPnt &Poles, const TColStd_Array1OfReal &Weights, gp_Pnt & P);
		%feature("autodoc", "1");
		void CoefsD0(const Standard_Real U, const TColgp_Array1OfPnt2d &Poles, const TColStd_Array1OfReal &Weights, gp_Pnt2d & P);
		%feature("autodoc", "1");
		void CacheD1(const Standard_Real U, const Standard_Integer Degree, const Standard_Real CacheParameter, const Standard_Real SpanLenght, const TColgp_Array1OfPnt &Poles, const TColStd_Array1OfReal &Weights, gp_Pnt & Point, gp_Vec & Vec);
		%feature("autodoc", "1");
		void CacheD1(const Standard_Real U, const Standard_Integer Degree, const Standard_Real CacheParameter, const Standard_Real SpanLenght, const TColgp_Array1OfPnt2d &Poles, const TColStd_Array1OfReal &Weights, gp_Pnt2d & Point, gp_Vec2d & Vec);
		%feature("autodoc", "1");
		void CoefsD1(const Standard_Real U, const TColgp_Array1OfPnt &Poles, const TColStd_Array1OfReal &Weights, gp_Pnt & P, gp_Vec & Vec);
		%feature("autodoc", "1");
		void CoefsD1(const Standard_Real U, const TColgp_Array1OfPnt2d &Poles, const TColStd_Array1OfReal &Weights, gp_Pnt2d & P, gp_Vec2d & Vec);
		%feature("autodoc", "1");
		void CacheD2(const Standard_Real U, const Standard_Integer Degree, const Standard_Real CacheParameter, const Standard_Real SpanLenght, const TColgp_Array1OfPnt &Poles, const TColStd_Array1OfReal &Weights, gp_Pnt & Point, gp_Vec & Vec1, gp_Vec & Vec2);
		%feature("autodoc", "1");
		void CacheD2(const Standard_Real U, const Standard_Integer Degree, const Standard_Real CacheParameter, const Standard_Real SpanLenght, const TColgp_Array1OfPnt2d &Poles, const TColStd_Array1OfReal &Weights, gp_Pnt2d & Point, gp_Vec2d & Vec1, gp_Vec2d & Vec2);
		%feature("autodoc", "1");
		void CoefsD2(const Standard_Real U, const TColgp_Array1OfPnt &Poles, const TColStd_Array1OfReal &Weights, gp_Pnt & P, gp_Vec & Vec1, gp_Vec & Vec2);
		%feature("autodoc", "1");
		void CoefsD2(const Standard_Real U, const TColgp_Array1OfPnt2d &Poles, const TColStd_Array1OfReal &Weights, gp_Pnt2d & P, gp_Vec2d & Vec1, gp_Vec2d & Vec2);
		%feature("autodoc", "1");
		void CacheD3(const Standard_Real U, const Standard_Integer Degree, const Standard_Real CacheParameter, const Standard_Real SpanLenght, const TColgp_Array1OfPnt &Poles, const TColStd_Array1OfReal &Weights, gp_Pnt & Point, gp_Vec & Vec1, gp_Vec & Vec2, gp_Vec & Vec3);
		%feature("autodoc", "1");
		void CacheD3(const Standard_Real U, const Standard_Integer Degree, const Standard_Real CacheParameter, const Standard_Real SpanLenght, const TColgp_Array1OfPnt2d &Poles, const TColStd_Array1OfReal &Weights, gp_Pnt2d & Point, gp_Vec2d & Vec1, gp_Vec2d & Vec2, gp_Vec2d & Vec3);
		%feature("autodoc", "1");
		void CoefsD3(const Standard_Real U, const TColgp_Array1OfPnt &Poles, const TColStd_Array1OfReal &Weights, gp_Pnt & P, gp_Vec & Vec1, gp_Vec & Vec2, gp_Vec & Vec3);
		%feature("autodoc", "1");
		void CoefsD3(const Standard_Real U, const TColgp_Array1OfPnt2d &Poles, const TColStd_Array1OfReal &Weights, gp_Pnt2d & P, gp_Vec2d & Vec1, gp_Vec2d & Vec2, gp_Vec2d & Vec3);
		%feature("autodoc", "1");
		void BuildCache(const Standard_Real U, const Standard_Real InverseOfSpanDomain, const Standard_Boolean PeriodicFlag, const Standard_Integer Degree, const TColStd_Array1OfReal &FlatKnots, const TColgp_Array1OfPnt &Poles, const TColStd_Array1OfReal &Weights, TColgp_Array1OfPnt & CachePoles, TColStd_Array1OfReal & CacheWeights);
		%feature("autodoc", "1");
		void BuildCache(const Standard_Real U, const Standard_Real InverseOfSpanDomain, const Standard_Boolean PeriodicFlag, const Standard_Integer Degree, const TColStd_Array1OfReal &FlatKnots, const TColgp_Array1OfPnt2d &Poles, const TColStd_Array1OfReal &Weights, TColgp_Array1OfPnt2d & CachePoles, TColStd_Array1OfReal & CacheWeights);
		%feature("autodoc", "1");
		void PolesCoefficients(const TColgp_Array1OfPnt2d &Poles, TColgp_Array1OfPnt2d & CachePoles);
		%feature("autodoc", "1");
		void PolesCoefficients(const TColgp_Array1OfPnt2d &Poles, const TColStd_Array1OfReal &Weights, TColgp_Array1OfPnt2d & CachePoles, TColStd_Array1OfReal & CacheWeights);
		%feature("autodoc", "1");
		void PolesCoefficients(const TColgp_Array1OfPnt &Poles, TColgp_Array1OfPnt & CachePoles);
		%feature("autodoc", "1");
		void PolesCoefficients(const TColgp_Array1OfPnt &Poles, const TColStd_Array1OfReal &Weights, TColgp_Array1OfPnt & CachePoles, TColStd_Array1OfReal & CacheWeights);
		%feature("autodoc", "1");
		void BuildSchoenbergPoints(const Standard_Integer Degree, const TColStd_Array1OfReal &FlatKnots, TColStd_Array1OfReal & Parameters);
		%feature("autodoc","Interpolate(Standard_Integer Degree, const FlatKnots, const Parameters, const ContactOrderArray) -> Standard_Integer");
		void Interpolate(const Standard_Integer Degree, const TColStd_Array1OfReal &FlatKnots, const TColStd_Array1OfReal &Parameters, const TColStd_Array1OfInteger &ContactOrderArray, TColgp_Array1OfPnt & Poles, Standard_Integer &OutValue);
		%feature("autodoc","Interpolate(Standard_Integer Degree, const FlatKnots, const Parameters, const ContactOrderArray) -> Standard_Integer");
		void Interpolate(const Standard_Integer Degree, const TColStd_Array1OfReal &FlatKnots, const TColStd_Array1OfReal &Parameters, const TColStd_Array1OfInteger &ContactOrderArray, TColgp_Array1OfPnt2d & Poles, Standard_Integer &OutValue);
		%feature("autodoc","Interpolate(Standard_Integer Degree, const FlatKnots, const Parameters, const ContactOrderArray) -> Standard_Integer");
		void Interpolate(const Standard_Integer Degree, const TColStd_Array1OfReal &FlatKnots, const TColStd_Array1OfReal &Parameters, const TColStd_Array1OfInteger &ContactOrderArray, TColgp_Array1OfPnt & Poles, TColStd_Array1OfReal & Weights, Standard_Integer &OutValue);
		%feature("autodoc","Interpolate(Standard_Integer Degree, const FlatKnots, const Parameters, const ContactOrderArray) -> Standard_Integer");
		void Interpolate(const Standard_Integer Degree, const TColStd_Array1OfReal &FlatKnots, const TColStd_Array1OfReal &Parameters, const TColStd_Array1OfInteger &ContactOrderArray, TColgp_Array1OfPnt2d & Poles, TColStd_Array1OfReal & Weights, Standard_Integer &OutValue);
		%feature("autodoc","Interpolate(Standard_Integer Degree, const FlatKnots, const Parameters, const ContactOrderArray, Standard_Integer ArrayDimension) -> [Standard_RealStandard_Integer]");
		void Interpolate(const Standard_Integer Degree, const TColStd_Array1OfReal &FlatKnots, const TColStd_Array1OfReal &Parameters, const TColStd_Array1OfInteger &ContactOrderArray, const Standard_Integer ArrayDimension, Standard_Real &OutValue, Standard_Integer &OutValue);
		%feature("autodoc","Interpolate(Standard_Integer Degree, const FlatKnots, const Parameters, const ContactOrderArray, Standard_Integer ArrayDimension) -> [Standard_RealStandard_RealStandard_Integer]");
		void Interpolate(const Standard_Integer Degree, const TColStd_Array1OfReal &FlatKnots, const TColStd_Array1OfReal &Parameters, const TColStd_Array1OfInteger &ContactOrderArray, const Standard_Integer ArrayDimension, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Integer &OutValue);
		%feature("autodoc","MovePoint(Standard_Real U, const Displ, Standard_Integer Index1, Standard_Integer Index2, Standard_Integer Degree, Standard_Boolean Rational, const Poles, const Weights, const FlatKnots) -> [Standard_IntegerStandard_Integer]");
		void MovePoint(const Standard_Real U, const gp_Vec2d &Displ, const Standard_Integer Index1, const Standard_Integer Index2, const Standard_Integer Degree, const Standard_Boolean Rational, const TColgp_Array1OfPnt2d &Poles, const TColStd_Array1OfReal &Weights, const TColStd_Array1OfReal &FlatKnots, Standard_Integer &OutValue, Standard_Integer &OutValue, TColgp_Array1OfPnt2d & NewPoles);
		%feature("autodoc","MovePoint(Standard_Real U, const Displ, Standard_Integer Index1, Standard_Integer Index2, Standard_Integer Degree, Standard_Boolean Rational, const Poles, const Weights, const FlatKnots) -> [Standard_IntegerStandard_Integer]");
		void MovePoint(const Standard_Real U, const gp_Vec &Displ, const Standard_Integer Index1, const Standard_Integer Index2, const Standard_Integer Degree, const Standard_Boolean Rational, const TColgp_Array1OfPnt &Poles, const TColStd_Array1OfReal &Weights, const TColStd_Array1OfReal &FlatKnots, Standard_Integer &OutValue, Standard_Integer &OutValue, TColgp_Array1OfPnt & NewPoles);
		%feature("autodoc","MovePointAndTangent(Standard_Real U, Standard_Integer ArrayDimension, Standard_Real Tolerance, Standard_Integer Degree, Standard_Boolean Rational, Standard_Integer StartingCondition, Standard_Integer EndingCondition, const Weights, const FlatKnots) -> [Standard_RealStandard_RealStandard_RealStandard_RealStandard_Integer]");
		void MovePointAndTangent(const Standard_Real U, const Standard_Integer ArrayDimension, Standard_Real &OutValue, Standard_Real &OutValue, const Standard_Real Tolerance, const Standard_Integer Degree, const Standard_Boolean Rational, const Standard_Integer StartingCondition, const Standard_Integer EndingCondition, Standard_Real &OutValue, const TColStd_Array1OfReal &Weights, const TColStd_Array1OfReal &FlatKnots, Standard_Real &OutValue, Standard_Integer &OutValue);
		%feature("autodoc","MovePointAndTangent(Standard_Real U, const Delta, const DeltaDerivative, Standard_Real Tolerance, Standard_Integer Degree, Standard_Boolean Rational, Standard_Integer StartingCondition, Standard_Integer EndingCondition, const Poles, const Weights, const FlatKnots) -> Standard_Integer");
		void MovePointAndTangent(const Standard_Real U, const gp_Vec &Delta, const gp_Vec &DeltaDerivative, const Standard_Real Tolerance, const Standard_Integer Degree, const Standard_Boolean Rational, const Standard_Integer StartingCondition, const Standard_Integer EndingCondition, const TColgp_Array1OfPnt &Poles, const TColStd_Array1OfReal &Weights, const TColStd_Array1OfReal &FlatKnots, TColgp_Array1OfPnt & NewPoles, Standard_Integer &OutValue);
		%feature("autodoc","MovePointAndTangent(Standard_Real U, const Delta, const DeltaDerivative, Standard_Real Tolerance, Standard_Integer Degree, Standard_Boolean Rational, Standard_Integer StartingCondition, Standard_Integer EndingCondition, const Poles, const Weights, const FlatKnots) -> Standard_Integer");
		void MovePointAndTangent(const Standard_Real U, const gp_Vec2d &Delta, const gp_Vec2d &DeltaDerivative, const Standard_Real Tolerance, const Standard_Integer Degree, const Standard_Boolean Rational, const Standard_Integer StartingCondition, const Standard_Integer EndingCondition, const TColgp_Array1OfPnt2d &Poles, const TColStd_Array1OfReal &Weights, const TColStd_Array1OfReal &FlatKnots, TColgp_Array1OfPnt2d & NewPoles, Standard_Integer &OutValue);
		%feature("autodoc","Resolution(Standard_Integer ArrayDimension, Standard_Integer NumPoles, const Weights, const FlatKnots, Standard_Integer Degree, Standard_Real Tolerance3D) -> [Standard_RealStandard_Real]");
		void Resolution(Standard_Real &OutValue, const Standard_Integer ArrayDimension, const Standard_Integer NumPoles, const TColStd_Array1OfReal &Weights, const TColStd_Array1OfReal &FlatKnots, const Standard_Integer Degree, const Standard_Real Tolerance3D, Standard_Real &OutValue);
		%feature("autodoc","Resolution(const Poles, const Weights, Standard_Integer NumPoles, const FlatKnots, Standard_Integer Degree, Standard_Real Tolerance3D) -> Standard_Real");
		void Resolution(const TColgp_Array1OfPnt &Poles, const TColStd_Array1OfReal &Weights, const Standard_Integer NumPoles, const TColStd_Array1OfReal &FlatKnots, const Standard_Integer Degree, const Standard_Real Tolerance3D, Standard_Real &OutValue);
		%feature("autodoc","Resolution(const Poles, const Weights, Standard_Integer NumPoles, const FlatKnots, Standard_Integer Degree, Standard_Real Tolerance3D) -> Standard_Real");
		void Resolution(const TColgp_Array1OfPnt2d &Poles, const TColStd_Array1OfReal &Weights, const Standard_Integer NumPoles, const TColStd_Array1OfReal &FlatKnots, const Standard_Integer Degree, const Standard_Real Tolerance3D, Standard_Real &OutValue);

};
%feature("shadow") BSplCLib::~BSplCLib %{
def __del__(self):
	GarbageCollector.occ_gc.append(self)
%}
