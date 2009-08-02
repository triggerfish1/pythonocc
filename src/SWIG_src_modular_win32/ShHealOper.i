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
%module ShHealOper

%include ShHealOper_renames.i

%include typemaps.i
%include cmalloc.i
%include cpointer.i
%include carrays.i
%include exception.i
%include std_list.i
%include std_string.i
%include <python/std_basic_string.i>

#ifndef _Standard_TypeDef_HeaderFile
#define _Standard_TypeDef_HeaderFile
#define Standard_False (Standard_Boolean) 0
#define Standard_True  (Standard_Boolean) 1
#endif

/*
Exception handling
*/
%{#include <Standard_Failure.hxx>%}
%exception
{
    try
    {
        $action
    } 
    catch(Standard_Failure)
    {
        SWIG_exception(SWIG_RuntimeError,Standard_Failure::Caught()->DynamicType()->Name());
    }
}

/*
Standard_Real & function transformation
*/
%typemap(argout) Standard_Real &OutValue {
    PyObject *o, *o2, *o3;
    o = PyFloat_FromDouble(*$1);
    if ((!$result) || ($result == Py_None)) {
        $result = o;
    } else {
        if (!PyTuple_Check($result)) {
            PyObject *o2 = $result;
            $result = PyTuple_New(1);
            PyTuple_SetItem($result,0,o2);
        }
        o3 = PyTuple_New(1);
        PyTuple_SetItem(o3,0,o);
        o2 = $result;
        $result = PySequence_Concat(o2,o3);
        Py_DECREF(o2);
        Py_DECREF(o3);
    }
}

%typemap(in,numinputs=0) Standard_Real &OutValue(Standard_Real temp) {
    $1 = &temp;
}

/*
Standard_Integer & function transformation
*/
%typemap(argout) Standard_Integer &OutValue {
    PyObject *o, *o2, *o3;
    o = PyInt_FromLong(*$1);
    if ((!$result) || ($result == Py_None)) {
        $result = o;
    } else {
        if (!PyTuple_Check($result)) {
            PyObject *o2 = $result;
            $result = PyTuple_New(1);
            PyTuple_SetItem($result,0,o2);
        }
        o3 = PyTuple_New(1);
        PyTuple_SetItem(o3,0,o);
        o2 = $result;
        $result = PySequence_Concat(o2,o3);
        Py_DECREF(o2);
        Py_DECREF(o3);
    }
}

%typemap(in,numinputs=0) Standard_Integer &OutValue(Standard_Integer temp) {
    $1 = &temp;
}

/*
Renaming operator = that can't be wrapped in Python
*/
%rename(Set) *::operator=;


%include ShHealOper_dependencies.i


%include ShHealOper_headers.i


enum ShHealOper_Error {
	ShHealOper_NotError,
	ShHealOper_InvalidParameters,
	ShHealOper_ErrorExecution,
	};



%nodefaultctor Handle_ShHealOper_SplitCurve2d;
class Handle_ShHealOper_SplitCurve2d : public Handle_ShapeUpgrade_SplitCurve2d {
	public:
		%feature("autodoc", "1");
		Handle_ShHealOper_SplitCurve2d();
		%feature("autodoc", "1");
		Handle_ShHealOper_SplitCurve2d(const Handle_ShHealOper_SplitCurve2d &aHandle);
		%feature("autodoc", "1");
		Handle_ShHealOper_SplitCurve2d(const ShHealOper_SplitCurve2d *anItem);
		%feature("autodoc", "1");
		Handle_ShHealOper_SplitCurve2d & operator=(const Handle_ShHealOper_SplitCurve2d &aHandle);
		%feature("autodoc", "1");
		Handle_ShHealOper_SplitCurve2d & operator=(const ShHealOper_SplitCurve2d *anItem);
		%feature("autodoc", "1");
		Handle_ShHealOper_SplitCurve2d const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShHealOper_SplitCurve2d {
	ShHealOper_SplitCurve2d* GetObject() {
	return (ShHealOper_SplitCurve2d*)$self->Access();
	}
};
%extend Handle_ShHealOper_SplitCurve2d {
	~Handle_ShHealOper_SplitCurve2d() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_ShHealOper_SplitCurve2d\n");}
	}
};


%nodefaultctor Handle_ShHealOper_SplitCurve3d;
class Handle_ShHealOper_SplitCurve3d : public Handle_ShapeUpgrade_SplitCurve3d {
	public:
		%feature("autodoc", "1");
		Handle_ShHealOper_SplitCurve3d();
		%feature("autodoc", "1");
		Handle_ShHealOper_SplitCurve3d(const Handle_ShHealOper_SplitCurve3d &aHandle);
		%feature("autodoc", "1");
		Handle_ShHealOper_SplitCurve3d(const ShHealOper_SplitCurve3d *anItem);
		%feature("autodoc", "1");
		Handle_ShHealOper_SplitCurve3d & operator=(const Handle_ShHealOper_SplitCurve3d &aHandle);
		%feature("autodoc", "1");
		Handle_ShHealOper_SplitCurve3d & operator=(const ShHealOper_SplitCurve3d *anItem);
		%feature("autodoc", "1");
		Handle_ShHealOper_SplitCurve3d const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShHealOper_SplitCurve3d {
	ShHealOper_SplitCurve3d* GetObject() {
	return (ShHealOper_SplitCurve3d*)$self->Access();
	}
};
%extend Handle_ShHealOper_SplitCurve3d {
	~Handle_ShHealOper_SplitCurve3d() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_ShHealOper_SplitCurve3d\n");}
	}
};


%nodefaultctor ShHealOper_Tool;
class ShHealOper_Tool {
	public:
		%feature("autodoc", "1");
		ShHealOper_Tool();
		%feature("autodoc", "1");
		ShHealOper_Tool(const TopoDS_Shape &theShape);
		%feature("autodoc", "1");
		virtual		void Init(const TopoDS_Shape &theShape);
		%feature("autodoc", "1");
		const TopoDS_Shape & GetResultShape() const;
		%feature("autodoc", "1");
		Standard_Boolean GetModifiedShape(const TopoDS_Shape &theOldShape, TopoDS_Shape & theNewShape) const;
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		void SetContext(Handle_ShapeBuild_ReShape & theContext);
		%feature("autodoc", "1");
		Handle_ShapeBuild_ReShape Context();
		%feature("autodoc", "1");
		Standard_Integer GetErrorStatus();

};
%extend ShHealOper_Tool {
	~ShHealOper_Tool() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of ShHealOper_Tool\n");}
	}
};


%nodefaultctor ShHealOper_Sewing;
class ShHealOper_Sewing : public ShHealOper_Tool {
	public:
		%feature("autodoc", "1");
		ShHealOper_Sewing();
		%feature("autodoc", "1");
		ShHealOper_Sewing(const TopoDS_Shape &theShape, const Standard_Real theTolerance);
		%feature("autodoc", "1");
		Standard_Boolean Perform();
		%feature("autodoc", "1");
		Standard_Boolean Perform(const TopTools_SequenceOfShape &theSeqShapes);
		%feature("autodoc", "1");
		void SetFacesMode(const Standard_Boolean theFacesMode);
		%feature("autodoc", "1");
		Standard_Boolean GetFacesMode();
		%feature("autodoc", "1");
		void SetFloatingEdgesMode(const Standard_Boolean theEdgesMode);
		%feature("autodoc", "1");
		Standard_Boolean GetFloatingEdgesMode();
		%feature("autodoc", "1");
		void SetNonManifoldMode(const Standard_Boolean theNonManifoldMode);
		%feature("autodoc", "1");
		Standard_Boolean GetNonManifoldMode();
		%feature("autodoc", "1");
		void SetTolerance(const Standard_Real theToler);
		%feature("autodoc", "1");
		Standard_Real GetTolerance();
		%feature("autodoc", "1");
		void SetHistoryLevel(TopAbs_ShapeEnum );
		%feature("autodoc", "1");
		TopAbs_ShapeEnum GetHistoryLevel();

};
%extend ShHealOper_Sewing {
	~ShHealOper_Sewing() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of ShHealOper_Sewing\n");}
	}
};


%nodefaultctor ShHealOper_RemoveInternalWires;
class ShHealOper_RemoveInternalWires : public ShHealOper_Tool {
	public:
		%feature("autodoc", "1");
		ShHealOper_RemoveInternalWires();
		%feature("autodoc", "1");
		ShHealOper_RemoveInternalWires(const TopoDS_Shape &theShape);
		%feature("autodoc", "1");
		virtual		void Init(const TopoDS_Shape &theShape);
		%feature("autodoc", "1");
		Standard_Boolean Remove();
		%feature("autodoc", "1");
		Standard_Boolean Remove(const TopTools_SequenceOfShape &theRemovedShapes);

};
%extend ShHealOper_RemoveInternalWires {
	~ShHealOper_RemoveInternalWires() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of ShHealOper_RemoveInternalWires\n");}
	}
};


%nodefaultctor ShHealOper_ShapeProcess;
class ShHealOper_ShapeProcess {
	public:
		%feature("autodoc", "1");
		ShHealOper_ShapeProcess();
		%feature("autodoc", "1");
		ShHealOper_ShapeProcess(const TCollection_AsciiString &theNameResource, const TCollection_AsciiString &thePrefix="ShapeProcess");
		%feature("autodoc", "1");
		void Perform(const TopoDS_Shape &theOldShape, TopoDS_Shape & theNewShape);
		%feature("autodoc", "1");
		void SetOperators(const TColStd_SequenceOfAsciiString &theSeqOperators);
		%feature("autodoc", "1");
		Standard_Boolean GetOperators(TColStd_SequenceOfAsciiString & theSeqOperators);
		%feature("autodoc", "1");
		void SetParameter(const TCollection_AsciiString &theNameParam, const TCollection_AsciiString &theVal);
		%feature("autodoc", "1");
		Standard_Boolean GetParameter(const TCollection_AsciiString &theNameParam, TCollection_AsciiString & theVal);
		%feature("autodoc", "1");
		void SetSaveHistoryMode(const Standard_Boolean theSaveHistory, TopAbs_ShapeEnum =TopAbs_FACE);
		%feature("autodoc", "1");
		Standard_Boolean GetSaveHistoryMode();
		%feature("autodoc", "1");
		Standard_Boolean GetModifiedShape(const TopoDS_Shape &theOldShape, TopoDS_Shape & theNewShape);
		%feature("autodoc", "1");
		Standard_Boolean isDone();

};
%extend ShHealOper_ShapeProcess {
	~ShHealOper_ShapeProcess() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of ShHealOper_ShapeProcess\n");}
	}
};


%nodefaultctor ShHealOper_RemoveFace;
class ShHealOper_RemoveFace : public ShHealOper_Tool {
	public:
		%feature("autodoc", "1");
		ShHealOper_RemoveFace();
		%feature("autodoc", "1");
		ShHealOper_RemoveFace(const TopoDS_Shape &theShape);
		%feature("autodoc", "1");
		virtual		void Init(const TopoDS_Shape &theShape);
		%feature("autodoc", "1");
		Standard_Boolean Perform();
		%feature("autodoc", "1");
		Standard_Boolean Perform(const TopTools_SequenceOfShape &theRemovedFaces);

};
%extend ShHealOper_RemoveFace {
	~ShHealOper_RemoveFace() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of ShHealOper_RemoveFace\n");}
	}
};


%nodefaultctor ShHealOper_CloseContour;
class ShHealOper_CloseContour : public ShHealOper_Tool {
	public:
		%feature("autodoc", "1");
		ShHealOper_CloseContour();
		%feature("autodoc", "1");
		ShHealOper_CloseContour(const TopoDS_Shape &theShape);
		%feature("autodoc", "1");
		virtual		void Init(const TopoDS_Shape &theShape);
		%feature("autodoc", "1");
		Standard_Boolean Perform(const TopTools_SequenceOfShape &theSeqEdges, const Standard_Boolean theModeVertex=0, const Standard_Boolean theModeFixGapsCurves=1);
		%feature("autodoc", "1");
		Standard_Boolean Perform(const TopoDS_Wire &theWire, const Standard_Boolean theModeVertex=0, const Standard_Boolean theModeFixGapsCurves=1);
		%feature("autodoc", "1");
		void SetTolerance(const Standard_Real theTolerance);
		%feature("autodoc", "1");
		Standard_Real GetTolerance();
		%feature("autodoc", "1");
		void SetMaxTolerance(const Standard_Real theMaxTolerance);
		%feature("autodoc", "1");
		Standard_Real GetMaxTolerance();
		%feature("autodoc", "1");
		void SetModeVertex(const Standard_Boolean theModeVertex);
		%feature("autodoc", "1");
		Standard_Boolean GetModeVertex();

};
%extend ShHealOper_CloseContour {
	~ShHealOper_CloseContour() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of ShHealOper_CloseContour\n");}
	}
};


%nodefaultctor ShHealOper_SplitCurve3d;
class ShHealOper_SplitCurve3d : public ShapeUpgrade_SplitCurve3d {
	public:
		%feature("autodoc", "1");
		ShHealOper_SplitCurve3d();
		%feature("autodoc", "1");
		virtual		void Compute();
		%feature("autodoc", "1");
		void SetValues(const Handle_TColStd_HSequenceOfReal &theValues);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend ShHealOper_SplitCurve3d {
	Handle_ShHealOper_SplitCurve3d GetHandle() {
	return *(Handle_ShHealOper_SplitCurve3d*) &$self;
	}
};
%extend ShHealOper_SplitCurve3d {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend ShHealOper_SplitCurve3d {
	~ShHealOper_SplitCurve3d() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of ShHealOper_SplitCurve3d\n");}
	}
};


%nodefaultctor ShHealOper_FillHoles;
class ShHealOper_FillHoles : public ShHealOper_Tool {
	public:
		%feature("autodoc", "1");
		ShHealOper_FillHoles();
		%feature("autodoc", "1");
		ShHealOper_FillHoles(const TopoDS_Shape &theShape);
		%feature("autodoc", "1");
		virtual		void Init(const TopoDS_Shape &theShape);
		%feature("autodoc", "1");
		void InitParameters(Standard_Integer =3, Standard_Integer =5, Standard_Integer =12, Standard_Real =1.00000000000000004792173602385929598312941379845e-4, Standard_Real =1.00000000000000008180305391403130954586231382564e-5, Standard_Real =1.0000000000000000208166817117216851329430937767e-2, Standard_Real =1.0000000000000000208166817117216851329430937767e-2, Standard_Integer =8, Standard_Integer =9);
		%feature("autodoc", "1");
		Standard_Boolean Fill();
		%feature("autodoc", "1");
		Standard_Boolean Fill(const TopTools_SequenceOfShape &theFillShapes);

};
%extend ShHealOper_FillHoles {
	~ShHealOper_FillHoles() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of ShHealOper_FillHoles\n");}
	}
};


%nodefaultctor ShHealOper_ChangeOrientation;
class ShHealOper_ChangeOrientation : public ShHealOper_Tool {
	public:
		%feature("autodoc", "1");
		ShHealOper_ChangeOrientation();
		%feature("autodoc", "1");
		ShHealOper_ChangeOrientation(const TopoDS_Shape &theShape);
		%feature("autodoc", "1");
		virtual		void Init(const TopoDS_Shape &theShape);
		%feature("autodoc", "1");
		Standard_Boolean Perform();

};
%extend ShHealOper_ChangeOrientation {
	~ShHealOper_ChangeOrientation() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of ShHealOper_ChangeOrientation\n");}
	}
};


%nodefaultctor ShHealOper_SplitCurve2d;
class ShHealOper_SplitCurve2d : public ShapeUpgrade_SplitCurve2d {
	public:
		%feature("autodoc", "1");
		ShHealOper_SplitCurve2d();
		%feature("autodoc", "1");
		virtual		void Compute();
		%feature("autodoc", "1");
		void SetValues(const Handle_TColStd_HSequenceOfReal &theValues);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend ShHealOper_SplitCurve2d {
	Handle_ShHealOper_SplitCurve2d GetHandle() {
	return *(Handle_ShHealOper_SplitCurve2d*) &$self;
	}
};
%extend ShHealOper_SplitCurve2d {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend ShHealOper_SplitCurve2d {
	~ShHealOper_SplitCurve2d() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of ShHealOper_SplitCurve2d\n");}
	}
};


%nodefaultctor ShHealOper_EdgeDivide;
class ShHealOper_EdgeDivide : public ShHealOper_Tool {
	public:
		%feature("autodoc", "1");
		ShHealOper_EdgeDivide();
		%feature("autodoc", "1");
		ShHealOper_EdgeDivide(const TopoDS_Shape &theShape);
		%feature("autodoc", "1");
		virtual		void Init(const TopoDS_Shape &theShape);
		%feature("autodoc", "1");
		Standard_Boolean Perform(const TopoDS_Shape &theEdge, const Standard_Real theValue, const Standard_Boolean theDivideParamMode=1);
		%feature("autodoc", "1");
		Standard_Boolean Perform(const TopoDS_Shape &theEdge, const TColStd_SequenceOfReal &theValues, const Standard_Boolean theDivideParamMode=1);

};
%extend ShHealOper_EdgeDivide {
	~ShHealOper_EdgeDivide() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of ShHealOper_EdgeDivide\n");}
	}
};
