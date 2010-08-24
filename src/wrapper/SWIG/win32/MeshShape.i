/*

Copyright 2008-2010 Thomas Paviot (tpaviot@gmail.com)

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

$Revision$
$Date$
$Author$
$HeaderURL$

*/


%{
#ifdef WNT
#pragma warning(disable : 4716)
#endif
%}

%module MeshShape
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include MeshShape_renames.i


%include MeshShape_required_python_modules.i


%include MeshShape_dependencies.i


%include MeshShape_headers.i


enum MeshShape_CurvatureType {
	MeshShape_Plane,
	MeshShape_SimpleCurvature,
	MeshShape_DoubleCurvature,
	};



%nodefaultctor Handle_MeshShape_DataMapNodeOfDataMapOfShapeListOfTransient;
class Handle_MeshShape_DataMapNodeOfDataMapOfShapeListOfTransient : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_MeshShape_DataMapNodeOfDataMapOfShapeListOfTransient();
		%feature("autodoc", "1");
		Handle_MeshShape_DataMapNodeOfDataMapOfShapeListOfTransient(const Handle_MeshShape_DataMapNodeOfDataMapOfShapeListOfTransient &aHandle);
		%feature("autodoc", "1");
		Handle_MeshShape_DataMapNodeOfDataMapOfShapeListOfTransient(const MeshShape_DataMapNodeOfDataMapOfShapeListOfTransient *anItem);
		%feature("autodoc", "1");
		Handle_MeshShape_DataMapNodeOfDataMapOfShapeListOfTransient & operator=(const Handle_MeshShape_DataMapNodeOfDataMapOfShapeListOfTransient &aHandle);
		%feature("autodoc", "1");
		Handle_MeshShape_DataMapNodeOfDataMapOfShapeListOfTransient & operator=(const MeshShape_DataMapNodeOfDataMapOfShapeListOfTransient *anItem);
		%feature("autodoc", "1");
		static		Handle_MeshShape_DataMapNodeOfDataMapOfShapeListOfTransient const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MeshShape_DataMapNodeOfDataMapOfShapeListOfTransient {
	MeshShape_DataMapNodeOfDataMapOfShapeListOfTransient* GetObject() {
	return (MeshShape_DataMapNodeOfDataMapOfShapeListOfTransient*)$self->Access();
	}
};
%feature("shadow") Handle_MeshShape_DataMapNodeOfDataMapOfShapeListOfTransient::~Handle_MeshShape_DataMapNodeOfDataMapOfShapeListOfTransient %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_MeshShape_DataMapNodeOfDataMapOfShapeListOfTransient {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_MeshShape_ListNodeOfPolygon;
class Handle_MeshShape_ListNodeOfPolygon : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_MeshShape_ListNodeOfPolygon();
		%feature("autodoc", "1");
		Handle_MeshShape_ListNodeOfPolygon(const Handle_MeshShape_ListNodeOfPolygon &aHandle);
		%feature("autodoc", "1");
		Handle_MeshShape_ListNodeOfPolygon(const MeshShape_ListNodeOfPolygon *anItem);
		%feature("autodoc", "1");
		Handle_MeshShape_ListNodeOfPolygon & operator=(const Handle_MeshShape_ListNodeOfPolygon &aHandle);
		%feature("autodoc", "1");
		Handle_MeshShape_ListNodeOfPolygon & operator=(const MeshShape_ListNodeOfPolygon *anItem);
		%feature("autodoc", "1");
		static		Handle_MeshShape_ListNodeOfPolygon const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MeshShape_ListNodeOfPolygon {
	MeshShape_ListNodeOfPolygon* GetObject() {
	return (MeshShape_ListNodeOfPolygon*)$self->Access();
	}
};
%feature("shadow") Handle_MeshShape_ListNodeOfPolygon::~Handle_MeshShape_ListNodeOfPolygon %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_MeshShape_ListNodeOfPolygon {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_MeshShape_ListNodeOfListOfSurfacePoint;
class Handle_MeshShape_ListNodeOfListOfSurfacePoint : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_MeshShape_ListNodeOfListOfSurfacePoint();
		%feature("autodoc", "1");
		Handle_MeshShape_ListNodeOfListOfSurfacePoint(const Handle_MeshShape_ListNodeOfListOfSurfacePoint &aHandle);
		%feature("autodoc", "1");
		Handle_MeshShape_ListNodeOfListOfSurfacePoint(const MeshShape_ListNodeOfListOfSurfacePoint *anItem);
		%feature("autodoc", "1");
		Handle_MeshShape_ListNodeOfListOfSurfacePoint & operator=(const Handle_MeshShape_ListNodeOfListOfSurfacePoint &aHandle);
		%feature("autodoc", "1");
		Handle_MeshShape_ListNodeOfListOfSurfacePoint & operator=(const MeshShape_ListNodeOfListOfSurfacePoint *anItem);
		%feature("autodoc", "1");
		static		Handle_MeshShape_ListNodeOfListOfSurfacePoint const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MeshShape_ListNodeOfListOfSurfacePoint {
	MeshShape_ListNodeOfListOfSurfacePoint* GetObject() {
	return (MeshShape_ListNodeOfListOfSurfacePoint*)$self->Access();
	}
};
%feature("shadow") Handle_MeshShape_ListNodeOfListOfSurfacePoint::~Handle_MeshShape_ListNodeOfListOfSurfacePoint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_MeshShape_ListNodeOfListOfSurfacePoint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_MeshShape_StdMapNodeOfMapOfCouple;
class Handle_MeshShape_StdMapNodeOfMapOfCouple : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_MeshShape_StdMapNodeOfMapOfCouple();
		%feature("autodoc", "1");
		Handle_MeshShape_StdMapNodeOfMapOfCouple(const Handle_MeshShape_StdMapNodeOfMapOfCouple &aHandle);
		%feature("autodoc", "1");
		Handle_MeshShape_StdMapNodeOfMapOfCouple(const MeshShape_StdMapNodeOfMapOfCouple *anItem);
		%feature("autodoc", "1");
		Handle_MeshShape_StdMapNodeOfMapOfCouple & operator=(const Handle_MeshShape_StdMapNodeOfMapOfCouple &aHandle);
		%feature("autodoc", "1");
		Handle_MeshShape_StdMapNodeOfMapOfCouple & operator=(const MeshShape_StdMapNodeOfMapOfCouple *anItem);
		%feature("autodoc", "1");
		static		Handle_MeshShape_StdMapNodeOfMapOfCouple const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MeshShape_StdMapNodeOfMapOfCouple {
	MeshShape_StdMapNodeOfMapOfCouple* GetObject() {
	return (MeshShape_StdMapNodeOfMapOfCouple*)$self->Access();
	}
};
%feature("shadow") Handle_MeshShape_StdMapNodeOfMapOfCouple::~Handle_MeshShape_StdMapNodeOfMapOfCouple %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_MeshShape_StdMapNodeOfMapOfCouple {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_MeshShape_DataMapNodeOfDataMapOfIntegerXY;
class Handle_MeshShape_DataMapNodeOfDataMapOfIntegerXY : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_MeshShape_DataMapNodeOfDataMapOfIntegerXY();
		%feature("autodoc", "1");
		Handle_MeshShape_DataMapNodeOfDataMapOfIntegerXY(const Handle_MeshShape_DataMapNodeOfDataMapOfIntegerXY &aHandle);
		%feature("autodoc", "1");
		Handle_MeshShape_DataMapNodeOfDataMapOfIntegerXY(const MeshShape_DataMapNodeOfDataMapOfIntegerXY *anItem);
		%feature("autodoc", "1");
		Handle_MeshShape_DataMapNodeOfDataMapOfIntegerXY & operator=(const Handle_MeshShape_DataMapNodeOfDataMapOfIntegerXY &aHandle);
		%feature("autodoc", "1");
		Handle_MeshShape_DataMapNodeOfDataMapOfIntegerXY & operator=(const MeshShape_DataMapNodeOfDataMapOfIntegerXY *anItem);
		%feature("autodoc", "1");
		static		Handle_MeshShape_DataMapNodeOfDataMapOfIntegerXY const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MeshShape_DataMapNodeOfDataMapOfIntegerXY {
	MeshShape_DataMapNodeOfDataMapOfIntegerXY* GetObject() {
	return (MeshShape_DataMapNodeOfDataMapOfIntegerXY*)$self->Access();
	}
};
%feature("shadow") Handle_MeshShape_DataMapNodeOfDataMapOfIntegerXY::~Handle_MeshShape_DataMapNodeOfDataMapOfIntegerXY %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_MeshShape_DataMapNodeOfDataMapOfIntegerXY {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_MeshShape_DataMapNodeOfDataMapOfIntegerPnt;
class Handle_MeshShape_DataMapNodeOfDataMapOfIntegerPnt : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_MeshShape_DataMapNodeOfDataMapOfIntegerPnt();
		%feature("autodoc", "1");
		Handle_MeshShape_DataMapNodeOfDataMapOfIntegerPnt(const Handle_MeshShape_DataMapNodeOfDataMapOfIntegerPnt &aHandle);
		%feature("autodoc", "1");
		Handle_MeshShape_DataMapNodeOfDataMapOfIntegerPnt(const MeshShape_DataMapNodeOfDataMapOfIntegerPnt *anItem);
		%feature("autodoc", "1");
		Handle_MeshShape_DataMapNodeOfDataMapOfIntegerPnt & operator=(const Handle_MeshShape_DataMapNodeOfDataMapOfIntegerPnt &aHandle);
		%feature("autodoc", "1");
		Handle_MeshShape_DataMapNodeOfDataMapOfIntegerPnt & operator=(const MeshShape_DataMapNodeOfDataMapOfIntegerPnt *anItem);
		%feature("autodoc", "1");
		static		Handle_MeshShape_DataMapNodeOfDataMapOfIntegerPnt const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_MeshShape_DataMapNodeOfDataMapOfIntegerPnt {
	MeshShape_DataMapNodeOfDataMapOfIntegerPnt* GetObject() {
	return (MeshShape_DataMapNodeOfDataMapOfIntegerPnt*)$self->Access();
	}
};
%feature("shadow") Handle_MeshShape_DataMapNodeOfDataMapOfIntegerPnt::~Handle_MeshShape_DataMapNodeOfDataMapOfIntegerPnt %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_MeshShape_DataMapNodeOfDataMapOfIntegerPnt {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MeshShape_DataMapNodeOfDataMapOfIntegerPnt;
class MeshShape_DataMapNodeOfDataMapOfIntegerPnt : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		MeshShape_DataMapNodeOfDataMapOfIntegerPnt(const Standard_Integer &K, const gp_Pnt I, const TCollection_MapNodePtr &n);
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetKey() {
				return (Standard_Integer) $self->Key();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetKey(Standard_Integer value ) {
				$self->Key()=value;
				}
		};
		%feature("autodoc", "1");
		gp_Pnt  Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MeshShape_DataMapNodeOfDataMapOfIntegerPnt {
	Handle_MeshShape_DataMapNodeOfDataMapOfIntegerPnt GetHandle() {
	return *(Handle_MeshShape_DataMapNodeOfDataMapOfIntegerPnt*) &$self;
	}
};
%extend MeshShape_DataMapNodeOfDataMapOfIntegerPnt {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") MeshShape_DataMapNodeOfDataMapOfIntegerPnt::~MeshShape_DataMapNodeOfDataMapOfIntegerPnt %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MeshShape_DataMapNodeOfDataMapOfIntegerPnt {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MeshShape_ListIteratorOfPolygon;
class MeshShape_ListIteratorOfPolygon {
	public:
		%feature("autodoc", "1");
		MeshShape_ListIteratorOfPolygon();
		%feature("autodoc", "1");
		MeshShape_ListIteratorOfPolygon(const MeshShape_Polygon &L);
		%feature("autodoc", "1");
		void Initialize(const MeshShape_Polygon &L);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		MeshShape_PolygonPoint & Value() const;

};
%feature("shadow") MeshShape_ListIteratorOfPolygon::~MeshShape_ListIteratorOfPolygon %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MeshShape_ListIteratorOfPolygon {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MeshShape_DataMapNodeOfDataMapOfShapeListOfTransient;
class MeshShape_DataMapNodeOfDataMapOfShapeListOfTransient : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		MeshShape_DataMapNodeOfDataMapOfShapeListOfTransient(const TopoDS_Shape K, const TColStd_ListOfTransient &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TopoDS_Shape  Key() const;
		%feature("autodoc", "1");
		TColStd_ListOfTransient & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MeshShape_DataMapNodeOfDataMapOfShapeListOfTransient {
	Handle_MeshShape_DataMapNodeOfDataMapOfShapeListOfTransient GetHandle() {
	return *(Handle_MeshShape_DataMapNodeOfDataMapOfShapeListOfTransient*) &$self;
	}
};
%extend MeshShape_DataMapNodeOfDataMapOfShapeListOfTransient {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") MeshShape_DataMapNodeOfDataMapOfShapeListOfTransient::~MeshShape_DataMapNodeOfDataMapOfShapeListOfTransient %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MeshShape_DataMapNodeOfDataMapOfShapeListOfTransient {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MeshShape_Couple;
class MeshShape_Couple {
	public:
		%feature("autodoc", "1");
		MeshShape_Couple();
		%feature("autodoc", "1");
		MeshShape_Couple(const Standard_Integer I1, const Standard_Integer I2);
		%feature("autodoc", "1");
		Standard_Boolean IsEqual(const MeshShape_Couple &other) const;
		%feature("autodoc", "1");
		Standard_Boolean operator==(const MeshShape_Couple &other) const;
		%feature("autodoc", "1");
		Standard_Integer HashCode(const Standard_Integer Upper) const;

};
%extend MeshShape_Couple {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") MeshShape_Couple::~MeshShape_Couple %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MeshShape_Couple {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MeshShape_DataMapOfIntegerPnt;
class MeshShape_DataMapOfIntegerPnt : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		MeshShape_DataMapOfIntegerPnt(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		MeshShape_DataMapOfIntegerPnt & Assign(const MeshShape_DataMapOfIntegerPnt &Other);
		%feature("autodoc", "1");
		MeshShape_DataMapOfIntegerPnt & operator=(const MeshShape_DataMapOfIntegerPnt &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const Standard_Integer &K, const gp_Pnt I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const Standard_Integer &K);
		%feature("autodoc", "1");
		const gp_Pnt  Find(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		const gp_Pnt  operator()(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		gp_Pnt  ChangeFind(const Standard_Integer &K);
		%feature("autodoc", "1");
		gp_Pnt  operator()(const Standard_Integer &K);

};
%feature("shadow") MeshShape_DataMapOfIntegerPnt::~MeshShape_DataMapOfIntegerPnt %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MeshShape_DataMapOfIntegerPnt {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MeshShape;
class MeshShape {
	public:
		%feature("autodoc", "1");
		MeshShape();
		%feature("autodoc", "1");
		static		void SetMesure(const Standard_Boolean val);
		%feature("autodoc", "1");
		static		void SetTrace(const Standard_Integer val);

};
%feature("shadow") MeshShape::~MeshShape %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MeshShape {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MeshShape_PolygonPoint;
class MeshShape_PolygonPoint {
	public:
		%feature("autodoc", "1");
		MeshShape_PolygonPoint();
		%feature("autodoc", "1");
		MeshShape_PolygonPoint(const Standard_Real w, const Standard_Integer Loc3d);
		%feature("autodoc", "1");
		Standard_Real Parameter() const;
		%feature("autodoc", "1");
		Standard_Integer Location3d() const;

};
%feature("shadow") MeshShape_PolygonPoint::~MeshShape_PolygonPoint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MeshShape_PolygonPoint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MeshShape_DataMapIteratorOfDataMapOfShapeListOfTransient;
class MeshShape_DataMapIteratorOfDataMapOfShapeListOfTransient : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		MeshShape_DataMapIteratorOfDataMapOfShapeListOfTransient();
		%feature("autodoc", "1");
		MeshShape_DataMapIteratorOfDataMapOfShapeListOfTransient(const MeshShape_DataMapOfShapeListOfTransient &aMap);
		%feature("autodoc", "1");
		void Initialize(const MeshShape_DataMapOfShapeListOfTransient &aMap);
		%feature("autodoc", "1");
		const TopoDS_Shape  Key() const;
		%feature("autodoc", "1");
		const TColStd_ListOfTransient & Value() const;

};
%feature("shadow") MeshShape_DataMapIteratorOfDataMapOfShapeListOfTransient::~MeshShape_DataMapIteratorOfDataMapOfShapeListOfTransient %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MeshShape_DataMapIteratorOfDataMapOfShapeListOfTransient {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MeshShape_CoupleHasher;
class MeshShape_CoupleHasher {
	public:
		%feature("autodoc", "1");
		MeshShape_CoupleHasher();
		%feature("autodoc", "1");
		static		Standard_Integer HashCode(const MeshShape_Couple &S, const Standard_Integer Upper);
		%feature("autodoc", "1");
		static		Standard_Boolean IsEqual(const MeshShape_Couple &S1, const MeshShape_Couple &S2);

};
%feature("shadow") MeshShape_CoupleHasher::~MeshShape_CoupleHasher %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MeshShape_CoupleHasher {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MeshShape_ListOfSurfacePoint;
class MeshShape_ListOfSurfacePoint {
	public:
		%feature("autodoc", "1");
		MeshShape_ListOfSurfacePoint();
		%feature("autodoc", "1");
		void Assign(const MeshShape_ListOfSurfacePoint &Other);
		%feature("autodoc", "1");
		void operator=(const MeshShape_ListOfSurfacePoint &Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Prepend(const MeshShape_SurfacePoint &I);
		%feature("autodoc", "1");
		void Prepend(const MeshShape_SurfacePoint &I, MeshShape_ListIteratorOfListOfSurfacePoint & theIt);
		%feature("autodoc", "1");
		void Prepend(MeshShape_ListOfSurfacePoint & Other);
		%feature("autodoc", "1");
		void Append(const MeshShape_SurfacePoint &I);
		%feature("autodoc", "1");
		void Append(const MeshShape_SurfacePoint &I, MeshShape_ListIteratorOfListOfSurfacePoint & theIt);
		%feature("autodoc", "1");
		void Append(MeshShape_ListOfSurfacePoint & Other);
		%feature("autodoc", "1");
		MeshShape_SurfacePoint & First() const;
		%feature("autodoc", "1");
		MeshShape_SurfacePoint & Last() const;
		%feature("autodoc", "1");
		void RemoveFirst();
		%feature("autodoc", "1");
		void Remove(MeshShape_ListIteratorOfListOfSurfacePoint & It);
		%feature("autodoc", "1");
		void InsertBefore(const MeshShape_SurfacePoint &I, MeshShape_ListIteratorOfListOfSurfacePoint & It);
		%feature("autodoc", "1");
		void InsertBefore(MeshShape_ListOfSurfacePoint & Other, MeshShape_ListIteratorOfListOfSurfacePoint & It);
		%feature("autodoc", "1");
		void InsertAfter(const MeshShape_SurfacePoint &I, MeshShape_ListIteratorOfListOfSurfacePoint & It);
		%feature("autodoc", "1");
		void InsertAfter(MeshShape_ListOfSurfacePoint & Other, MeshShape_ListIteratorOfListOfSurfacePoint & It);

};
%feature("shadow") MeshShape_ListOfSurfacePoint::~MeshShape_ListOfSurfacePoint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MeshShape_ListOfSurfacePoint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MeshShape_ListNodeOfPolygon;
class MeshShape_ListNodeOfPolygon : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		MeshShape_ListNodeOfPolygon(const MeshShape_PolygonPoint &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		MeshShape_PolygonPoint & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MeshShape_ListNodeOfPolygon {
	Handle_MeshShape_ListNodeOfPolygon GetHandle() {
	return *(Handle_MeshShape_ListNodeOfPolygon*) &$self;
	}
};
%extend MeshShape_ListNodeOfPolygon {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") MeshShape_ListNodeOfPolygon::~MeshShape_ListNodeOfPolygon %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MeshShape_ListNodeOfPolygon {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MeshShape_DataMapIteratorOfDataMapOfIntegerPnt;
class MeshShape_DataMapIteratorOfDataMapOfIntegerPnt : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		MeshShape_DataMapIteratorOfDataMapOfIntegerPnt();
		%feature("autodoc", "1");
		MeshShape_DataMapIteratorOfDataMapOfIntegerPnt(const MeshShape_DataMapOfIntegerPnt &aMap);
		%feature("autodoc", "1");
		void Initialize(const MeshShape_DataMapOfIntegerPnt &aMap);
		%feature("autodoc", "1");
		const Standard_Integer & Key() const;
		%feature("autodoc", "1");
		const gp_Pnt  Value() const;

};
%feature("shadow") MeshShape_DataMapIteratorOfDataMapOfIntegerPnt::~MeshShape_DataMapIteratorOfDataMapOfIntegerPnt %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MeshShape_DataMapIteratorOfDataMapOfIntegerPnt {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MeshShape_MapIteratorOfMapOfCouple;
class MeshShape_MapIteratorOfMapOfCouple : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		MeshShape_MapIteratorOfMapOfCouple();
		%feature("autodoc", "1");
		MeshShape_MapIteratorOfMapOfCouple(const MeshShape_MapOfCouple &aMap);
		%feature("autodoc", "1");
		void Initialize(const MeshShape_MapOfCouple &aMap);
		%feature("autodoc", "1");
		const MeshShape_Couple & Key() const;

};
%feature("shadow") MeshShape_MapIteratorOfMapOfCouple::~MeshShape_MapIteratorOfMapOfCouple %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MeshShape_MapIteratorOfMapOfCouple {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MeshShape_StdMapNodeOfMapOfCouple;
class MeshShape_StdMapNodeOfMapOfCouple : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		MeshShape_StdMapNodeOfMapOfCouple(const MeshShape_Couple &K, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		MeshShape_Couple & Key() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MeshShape_StdMapNodeOfMapOfCouple {
	Handle_MeshShape_StdMapNodeOfMapOfCouple GetHandle() {
	return *(Handle_MeshShape_StdMapNodeOfMapOfCouple*) &$self;
	}
};
%extend MeshShape_StdMapNodeOfMapOfCouple {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") MeshShape_StdMapNodeOfMapOfCouple::~MeshShape_StdMapNodeOfMapOfCouple %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MeshShape_StdMapNodeOfMapOfCouple {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MeshShape_Polygon;
class MeshShape_Polygon {
	public:
		%feature("autodoc", "1");
		MeshShape_Polygon();
		%feature("autodoc", "1");
		void Assign(const MeshShape_Polygon &Other);
		%feature("autodoc", "1");
		void operator=(const MeshShape_Polygon &Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Prepend(const MeshShape_PolygonPoint &I);
		%feature("autodoc", "1");
		void Prepend(const MeshShape_PolygonPoint &I, MeshShape_ListIteratorOfPolygon & theIt);
		%feature("autodoc", "1");
		void Prepend(MeshShape_Polygon & Other);
		%feature("autodoc", "1");
		void Append(const MeshShape_PolygonPoint &I);
		%feature("autodoc", "1");
		void Append(const MeshShape_PolygonPoint &I, MeshShape_ListIteratorOfPolygon & theIt);
		%feature("autodoc", "1");
		void Append(MeshShape_Polygon & Other);
		%feature("autodoc", "1");
		MeshShape_PolygonPoint & First() const;
		%feature("autodoc", "1");
		MeshShape_PolygonPoint & Last() const;
		%feature("autodoc", "1");
		void RemoveFirst();
		%feature("autodoc", "1");
		void Remove(MeshShape_ListIteratorOfPolygon & It);
		%feature("autodoc", "1");
		void InsertBefore(const MeshShape_PolygonPoint &I, MeshShape_ListIteratorOfPolygon & It);
		%feature("autodoc", "1");
		void InsertBefore(MeshShape_Polygon & Other, MeshShape_ListIteratorOfPolygon & It);
		%feature("autodoc", "1");
		void InsertAfter(const MeshShape_PolygonPoint &I, MeshShape_ListIteratorOfPolygon & It);
		%feature("autodoc", "1");
		void InsertAfter(MeshShape_Polygon & Other, MeshShape_ListIteratorOfPolygon & It);

};
%feature("shadow") MeshShape_Polygon::~MeshShape_Polygon %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MeshShape_Polygon {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MeshShape_DataMapIteratorOfDataMapOfIntegerXY;
class MeshShape_DataMapIteratorOfDataMapOfIntegerXY : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		MeshShape_DataMapIteratorOfDataMapOfIntegerXY();
		%feature("autodoc", "1");
		MeshShape_DataMapIteratorOfDataMapOfIntegerXY(const MeshShape_DataMapOfIntegerXY &aMap);
		%feature("autodoc", "1");
		void Initialize(const MeshShape_DataMapOfIntegerXY &aMap);
		%feature("autodoc", "1");
		const Standard_Integer & Key() const;
		%feature("autodoc", "1");
		const gp_XY  Value() const;

};
%feature("shadow") MeshShape_DataMapIteratorOfDataMapOfIntegerXY::~MeshShape_DataMapIteratorOfDataMapOfIntegerXY %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MeshShape_DataMapIteratorOfDataMapOfIntegerXY {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MeshShape_DataMapOfIntegerXY;
class MeshShape_DataMapOfIntegerXY : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		MeshShape_DataMapOfIntegerXY(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		MeshShape_DataMapOfIntegerXY & Assign(const MeshShape_DataMapOfIntegerXY &Other);
		%feature("autodoc", "1");
		MeshShape_DataMapOfIntegerXY & operator=(const MeshShape_DataMapOfIntegerXY &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const Standard_Integer &K, const gp_XY I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const Standard_Integer &K);
		%feature("autodoc", "1");
		const gp_XY  Find(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		const gp_XY  operator()(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		gp_XY  ChangeFind(const Standard_Integer &K);
		%feature("autodoc", "1");
		gp_XY  operator()(const Standard_Integer &K);

};
%feature("shadow") MeshShape_DataMapOfIntegerXY::~MeshShape_DataMapOfIntegerXY %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MeshShape_DataMapOfIntegerXY {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MeshShape_ListIteratorOfListOfSurfacePoint;
class MeshShape_ListIteratorOfListOfSurfacePoint {
	public:
		%feature("autodoc", "1");
		MeshShape_ListIteratorOfListOfSurfacePoint();
		%feature("autodoc", "1");
		MeshShape_ListIteratorOfListOfSurfacePoint(const MeshShape_ListOfSurfacePoint &L);
		%feature("autodoc", "1");
		void Initialize(const MeshShape_ListOfSurfacePoint &L);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		MeshShape_SurfacePoint & Value() const;

};
%feature("shadow") MeshShape_ListIteratorOfListOfSurfacePoint::~MeshShape_ListIteratorOfListOfSurfacePoint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MeshShape_ListIteratorOfListOfSurfacePoint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MeshShape_SurfacePoint;
class MeshShape_SurfacePoint {
	public:
		%feature("autodoc", "1");
		MeshShape_SurfacePoint();
		%feature("autodoc", "1");
		MeshShape_SurfacePoint(const Standard_Real u, const Standard_Real v, const Standard_Real x, const Standard_Real y, const Standard_Real z);
		%feature("autodoc", "1");
		MeshShape_SurfacePoint(const gp_XY uv, const gp_XYZ coord);
		%feature("autodoc", "1");
		MeshShape_SurfacePoint(const Standard_Real u, const Standard_Real v, const gp_XYZ coord);
		%feature("autodoc", "1");
		const gp_XY  UV() const;
		%feature("autodoc", "1");
		const gp_XYZ  Coord() const;

};
%feature("shadow") MeshShape_SurfacePoint::~MeshShape_SurfacePoint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MeshShape_SurfacePoint {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MeshShape_MapOfCouple;
class MeshShape_MapOfCouple : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		MeshShape_MapOfCouple(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		MeshShape_MapOfCouple & Assign(const MeshShape_MapOfCouple &Other);
		%feature("autodoc", "1");
		MeshShape_MapOfCouple & operator=(const MeshShape_MapOfCouple &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Add(const MeshShape_Couple &aKey);
		%feature("autodoc", "1");
		Standard_Boolean Contains(const MeshShape_Couple &aKey) const;
		%feature("autodoc", "1");
		Standard_Boolean Remove(const MeshShape_Couple &aKey);

};
%feature("shadow") MeshShape_MapOfCouple::~MeshShape_MapOfCouple %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MeshShape_MapOfCouple {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MeshShape_DataMapNodeOfDataMapOfIntegerXY;
class MeshShape_DataMapNodeOfDataMapOfIntegerXY : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		MeshShape_DataMapNodeOfDataMapOfIntegerXY(const Standard_Integer &K, const gp_XY I, const TCollection_MapNodePtr &n);
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetKey() {
				return (Standard_Integer) $self->Key();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetKey(Standard_Integer value ) {
				$self->Key()=value;
				}
		};
		%feature("autodoc", "1");
		gp_XY  Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MeshShape_DataMapNodeOfDataMapOfIntegerXY {
	Handle_MeshShape_DataMapNodeOfDataMapOfIntegerXY GetHandle() {
	return *(Handle_MeshShape_DataMapNodeOfDataMapOfIntegerXY*) &$self;
	}
};
%extend MeshShape_DataMapNodeOfDataMapOfIntegerXY {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") MeshShape_DataMapNodeOfDataMapOfIntegerXY::~MeshShape_DataMapNodeOfDataMapOfIntegerXY %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MeshShape_DataMapNodeOfDataMapOfIntegerXY {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MeshShape_DataMapOfShapeListOfTransient;
class MeshShape_DataMapOfShapeListOfTransient : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		MeshShape_DataMapOfShapeListOfTransient(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		MeshShape_DataMapOfShapeListOfTransient & Assign(const MeshShape_DataMapOfShapeListOfTransient &Other);
		%feature("autodoc", "1");
		MeshShape_DataMapOfShapeListOfTransient & operator=(const MeshShape_DataMapOfShapeListOfTransient &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const TopoDS_Shape K, const TColStd_ListOfTransient &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TopoDS_Shape K);
		%feature("autodoc", "1");
		const TColStd_ListOfTransient & Find(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		const TColStd_ListOfTransient & operator()(const TopoDS_Shape K) const;
		%feature("autodoc", "1");
		TColStd_ListOfTransient & ChangeFind(const TopoDS_Shape K);
		%feature("autodoc", "1");
		TColStd_ListOfTransient & operator()(const TopoDS_Shape K);

};
%feature("shadow") MeshShape_DataMapOfShapeListOfTransient::~MeshShape_DataMapOfShapeListOfTransient %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MeshShape_DataMapOfShapeListOfTransient {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor MeshShape_ListNodeOfListOfSurfacePoint;
class MeshShape_ListNodeOfListOfSurfacePoint : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		MeshShape_ListNodeOfListOfSurfacePoint(const MeshShape_SurfacePoint &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		MeshShape_SurfacePoint & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend MeshShape_ListNodeOfListOfSurfacePoint {
	Handle_MeshShape_ListNodeOfListOfSurfacePoint GetHandle() {
	return *(Handle_MeshShape_ListNodeOfListOfSurfacePoint*) &$self;
	}
};
%extend MeshShape_ListNodeOfListOfSurfacePoint {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%feature("shadow") MeshShape_ListNodeOfListOfSurfacePoint::~MeshShape_ListNodeOfListOfSurfacePoint %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend MeshShape_ListNodeOfListOfSurfacePoint {
	void _kill_pointed() {
		delete $self;
	}
};
