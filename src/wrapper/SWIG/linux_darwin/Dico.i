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
%module Dico

%include Dico_renames.i

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


%include Dico_dependencies.i


%include Dico_headers.i




%nodefaultctor Handle_Dico_StackItemOfDictionaryOfTransient;
class Handle_Dico_StackItemOfDictionaryOfTransient : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Dico_StackItemOfDictionaryOfTransient();
		%feature("autodoc", "1");
		Handle_Dico_StackItemOfDictionaryOfTransient(const Handle_Dico_StackItemOfDictionaryOfTransient &aHandle);
		%feature("autodoc", "1");
		Handle_Dico_StackItemOfDictionaryOfTransient(const Dico_StackItemOfDictionaryOfTransient *anItem);
		%feature("autodoc", "1");
		Handle_Dico_StackItemOfDictionaryOfTransient & operator=(const Handle_Dico_StackItemOfDictionaryOfTransient &aHandle);
		%feature("autodoc", "1");
		Handle_Dico_StackItemOfDictionaryOfTransient & operator=(const Dico_StackItemOfDictionaryOfTransient *anItem);
		%feature("autodoc", "1");
		Handle_Dico_StackItemOfDictionaryOfTransient const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Dico_StackItemOfDictionaryOfTransient {
	Dico_StackItemOfDictionaryOfTransient* GetObject() {
	return (Dico_StackItemOfDictionaryOfTransient*)$self->Access();
	}
};
%extend Handle_Dico_StackItemOfDictionaryOfTransient {
	~Handle_Dico_StackItemOfDictionaryOfTransient() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_Dico_StackItemOfDictionaryOfTransient\n");}
	}
};


%nodefaultctor Handle_Dico_DictionaryOfInteger;
class Handle_Dico_DictionaryOfInteger : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Dico_DictionaryOfInteger();
		%feature("autodoc", "1");
		Handle_Dico_DictionaryOfInteger(const Handle_Dico_DictionaryOfInteger &aHandle);
		%feature("autodoc", "1");
		Handle_Dico_DictionaryOfInteger(const Dico_DictionaryOfInteger *anItem);
		%feature("autodoc", "1");
		Handle_Dico_DictionaryOfInteger & operator=(const Handle_Dico_DictionaryOfInteger &aHandle);
		%feature("autodoc", "1");
		Handle_Dico_DictionaryOfInteger & operator=(const Dico_DictionaryOfInteger *anItem);
		%feature("autodoc", "1");
		Handle_Dico_DictionaryOfInteger const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Dico_DictionaryOfInteger {
	Dico_DictionaryOfInteger* GetObject() {
	return (Dico_DictionaryOfInteger*)$self->Access();
	}
};
%extend Handle_Dico_DictionaryOfInteger {
	~Handle_Dico_DictionaryOfInteger() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_Dico_DictionaryOfInteger\n");}
	}
};


%nodefaultctor Handle_Dico_DictionaryOfTransient;
class Handle_Dico_DictionaryOfTransient : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Dico_DictionaryOfTransient();
		%feature("autodoc", "1");
		Handle_Dico_DictionaryOfTransient(const Handle_Dico_DictionaryOfTransient &aHandle);
		%feature("autodoc", "1");
		Handle_Dico_DictionaryOfTransient(const Dico_DictionaryOfTransient *anItem);
		%feature("autodoc", "1");
		Handle_Dico_DictionaryOfTransient & operator=(const Handle_Dico_DictionaryOfTransient &aHandle);
		%feature("autodoc", "1");
		Handle_Dico_DictionaryOfTransient & operator=(const Dico_DictionaryOfTransient *anItem);
		%feature("autodoc", "1");
		Handle_Dico_DictionaryOfTransient const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Dico_DictionaryOfTransient {
	Dico_DictionaryOfTransient* GetObject() {
	return (Dico_DictionaryOfTransient*)$self->Access();
	}
};
%extend Handle_Dico_DictionaryOfTransient {
	~Handle_Dico_DictionaryOfTransient() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_Dico_DictionaryOfTransient\n");}
	}
};


%nodefaultctor Handle_Dico_StackItemOfDictionaryOfInteger;
class Handle_Dico_StackItemOfDictionaryOfInteger : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_Dico_StackItemOfDictionaryOfInteger();
		%feature("autodoc", "1");
		Handle_Dico_StackItemOfDictionaryOfInteger(const Handle_Dico_StackItemOfDictionaryOfInteger &aHandle);
		%feature("autodoc", "1");
		Handle_Dico_StackItemOfDictionaryOfInteger(const Dico_StackItemOfDictionaryOfInteger *anItem);
		%feature("autodoc", "1");
		Handle_Dico_StackItemOfDictionaryOfInteger & operator=(const Handle_Dico_StackItemOfDictionaryOfInteger &aHandle);
		%feature("autodoc", "1");
		Handle_Dico_StackItemOfDictionaryOfInteger & operator=(const Dico_StackItemOfDictionaryOfInteger *anItem);
		%feature("autodoc", "1");
		Handle_Dico_StackItemOfDictionaryOfInteger const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Dico_StackItemOfDictionaryOfInteger {
	Dico_StackItemOfDictionaryOfInteger* GetObject() {
	return (Dico_StackItemOfDictionaryOfInteger*)$self->Access();
	}
};
%extend Handle_Dico_StackItemOfDictionaryOfInteger {
	~Handle_Dico_StackItemOfDictionaryOfInteger() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_Dico_StackItemOfDictionaryOfInteger\n");}
	}
};


%nodefaultctor Dico_DictionaryOfInteger;
class Dico_DictionaryOfInteger : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Dico_DictionaryOfInteger();
		%feature("autodoc", "1");
		Standard_Boolean HasItem(const char * name, const Standard_Boolean exact=0) const;
		%feature("autodoc", "1");
		Standard_Boolean HasItem(const TCollection_AsciiString &name, const Standard_Boolean exact=1) const;
		%feature("autodoc", "1");
		const Standard_Integer & Item(const char * name, const Standard_Boolean exact=1) const;
		%feature("autodoc", "1");
		const Standard_Integer & Item(const TCollection_AsciiString &name, const Standard_Boolean exact=1) const;
		%feature("autodoc", "1");
		Standard_Boolean GetItem(const char * name, Standard_Integer &OutValue, const Standard_Boolean exact=1) const;
		%feature("autodoc", "1");
		Standard_Boolean GetItem(const TCollection_AsciiString &name, Standard_Integer &OutValue, const Standard_Boolean exact=1) const;
		%feature("autodoc", "1");
		void SetItem(const char * name, const Standard_Integer &anitem, const Standard_Boolean exact=1);
		%feature("autodoc", "1");
		void SetItem(const TCollection_AsciiString &name, const Standard_Integer &anitem, const Standard_Boolean exact=1);
		%feature("autodoc", "1");
		Standard_Integer & NewItem(const char * name, Standard_Boolean & isvalued, const Standard_Boolean exact=1);
		%feature("autodoc", "1");
		Standard_Integer & NewItem(const TCollection_AsciiString &name, Standard_Boolean & isvalued, const Standard_Boolean exact=1);
		%feature("autodoc", "1");
		Standard_Boolean RemoveItem(const char * name, const Standard_Boolean cln=1, const Standard_Boolean exact=1);
		%feature("autodoc", "1");
		Standard_Boolean RemoveItem(const TCollection_AsciiString &name, const Standard_Boolean cln=1, const Standard_Boolean exact=1);
		%feature("autodoc", "1");
		void Clean();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Handle_Dico_DictionaryOfInteger Copy() const;
		%feature("autodoc", "1");
		Standard_Boolean Complete(Handle_Dico_DictionaryOfInteger & acell) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Dico_DictionaryOfInteger {
	Handle_Dico_DictionaryOfInteger GetHandle() {
	return *(Handle_Dico_DictionaryOfInteger*) &$self;
	}
};
%extend Dico_DictionaryOfInteger {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend Dico_DictionaryOfInteger {
	~Dico_DictionaryOfInteger() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Dico_DictionaryOfInteger\n");}
	}
};


%nodefaultctor Dico_IteratorOfDictionaryOfTransient;
class Dico_IteratorOfDictionaryOfTransient {
	public:
		%feature("autodoc", "1");
		Dico_IteratorOfDictionaryOfTransient(const Handle_Dico_DictionaryOfTransient &acell);
		%feature("autodoc", "1");
		Dico_IteratorOfDictionaryOfTransient(const Handle_Dico_DictionaryOfTransient &acell, const char * basename);
		%feature("autodoc", "1");
		Dico_IteratorOfDictionaryOfTransient(const Handle_Dico_DictionaryOfTransient &acell, const TCollection_AsciiString &basename);
		%feature("autodoc", "1");
		void Start();
		%feature("autodoc", "1");
		Standard_Boolean More();
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		const Handle_Standard_Transient & Value() const;
		%feature("autodoc", "1");
		TCollection_AsciiString Name() const;

};
%extend Dico_IteratorOfDictionaryOfTransient {
	~Dico_IteratorOfDictionaryOfTransient() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Dico_IteratorOfDictionaryOfTransient\n");}
	}
};


%nodefaultctor Dico_StackItemOfDictionaryOfInteger;
class Dico_StackItemOfDictionaryOfInteger : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Dico_StackItemOfDictionaryOfInteger();
		%feature("autodoc", "1");
		Dico_StackItemOfDictionaryOfInteger(const Handle_Dico_StackItemOfDictionaryOfInteger &previous);
		%feature("autodoc", "1");
		Handle_Dico_StackItemOfDictionaryOfInteger Previous() const;
		%feature("autodoc", "1");
		Handle_Dico_DictionaryOfInteger Value() const;
		%feature("autodoc", "1");
		void SetValue(const Handle_Dico_DictionaryOfInteger &cval);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Dico_StackItemOfDictionaryOfInteger {
	Handle_Dico_StackItemOfDictionaryOfInteger GetHandle() {
	return *(Handle_Dico_StackItemOfDictionaryOfInteger*) &$self;
	}
};
%extend Dico_StackItemOfDictionaryOfInteger {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend Dico_StackItemOfDictionaryOfInteger {
	~Dico_StackItemOfDictionaryOfInteger() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Dico_StackItemOfDictionaryOfInteger\n");}
	}
};


%nodefaultctor Dico_StackItemOfDictionaryOfTransient;
class Dico_StackItemOfDictionaryOfTransient : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Dico_StackItemOfDictionaryOfTransient();
		%feature("autodoc", "1");
		Dico_StackItemOfDictionaryOfTransient(const Handle_Dico_StackItemOfDictionaryOfTransient &previous);
		%feature("autodoc", "1");
		Handle_Dico_StackItemOfDictionaryOfTransient Previous() const;
		%feature("autodoc", "1");
		Handle_Dico_DictionaryOfTransient Value() const;
		%feature("autodoc", "1");
		void SetValue(const Handle_Dico_DictionaryOfTransient &cval);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Dico_StackItemOfDictionaryOfTransient {
	Handle_Dico_StackItemOfDictionaryOfTransient GetHandle() {
	return *(Handle_Dico_StackItemOfDictionaryOfTransient*) &$self;
	}
};
%extend Dico_StackItemOfDictionaryOfTransient {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend Dico_StackItemOfDictionaryOfTransient {
	~Dico_StackItemOfDictionaryOfTransient() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Dico_StackItemOfDictionaryOfTransient\n");}
	}
};


%nodefaultctor Dico_DictionaryOfTransient;
class Dico_DictionaryOfTransient : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Dico_DictionaryOfTransient();
		%feature("autodoc", "1");
		Standard_Boolean HasItem(const char * name, const Standard_Boolean exact=0) const;
		%feature("autodoc", "1");
		Standard_Boolean HasItem(const TCollection_AsciiString &name, const Standard_Boolean exact=1) const;
		%feature("autodoc", "1");
		const Handle_Standard_Transient & Item(const char * name, const Standard_Boolean exact=1) const;
		%feature("autodoc", "1");
		const Handle_Standard_Transient & Item(const TCollection_AsciiString &name, const Standard_Boolean exact=1) const;
		%feature("autodoc", "1");
		Standard_Boolean GetItem(const char * name, Handle_Standard_Transient & anitem, const Standard_Boolean exact=1) const;
		%feature("autodoc", "1");
		Standard_Boolean GetItem(const TCollection_AsciiString &name, Handle_Standard_Transient & anitem, const Standard_Boolean exact=1) const;
		%feature("autodoc", "1");
		void SetItem(const char * name, const Handle_Standard_Transient &anitem, const Standard_Boolean exact=1);
		%feature("autodoc", "1");
		void SetItem(const TCollection_AsciiString &name, const Handle_Standard_Transient &anitem, const Standard_Boolean exact=1);
		%feature("autodoc", "1");
		Handle_Standard_Transient & NewItem(const char * name, Standard_Boolean & isvalued, const Standard_Boolean exact=1);
		%feature("autodoc", "1");
		Handle_Standard_Transient & NewItem(const TCollection_AsciiString &name, Standard_Boolean & isvalued, const Standard_Boolean exact=1);
		%feature("autodoc", "1");
		Standard_Boolean RemoveItem(const char * name, const Standard_Boolean cln=1, const Standard_Boolean exact=1);
		%feature("autodoc", "1");
		Standard_Boolean RemoveItem(const TCollection_AsciiString &name, const Standard_Boolean cln=1, const Standard_Boolean exact=1);
		%feature("autodoc", "1");
		void Clean();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Handle_Dico_DictionaryOfTransient Copy() const;
		%feature("autodoc", "1");
		Standard_Boolean Complete(Handle_Dico_DictionaryOfTransient & acell) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Dico_DictionaryOfTransient {
	Handle_Dico_DictionaryOfTransient GetHandle() {
	return *(Handle_Dico_DictionaryOfTransient*) &$self;
	}
};
%extend Dico_DictionaryOfTransient {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend Dico_DictionaryOfTransient {
	~Dico_DictionaryOfTransient() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Dico_DictionaryOfTransient\n");}
	}
};


%nodefaultctor Dico_IteratorOfDictionaryOfInteger;
class Dico_IteratorOfDictionaryOfInteger {
	public:
		%feature("autodoc", "1");
		Dico_IteratorOfDictionaryOfInteger(const Handle_Dico_DictionaryOfInteger &acell);
		%feature("autodoc", "1");
		Dico_IteratorOfDictionaryOfInteger(const Handle_Dico_DictionaryOfInteger &acell, const char * basename);
		%feature("autodoc", "1");
		Dico_IteratorOfDictionaryOfInteger(const Handle_Dico_DictionaryOfInteger &acell, const TCollection_AsciiString &basename);
		%feature("autodoc", "1");
		void Start();
		%feature("autodoc", "1");
		Standard_Boolean More();
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		const Standard_Integer & Value() const;
		%feature("autodoc", "1");
		TCollection_AsciiString Name() const;

};
%extend Dico_IteratorOfDictionaryOfInteger {
	~Dico_IteratorOfDictionaryOfInteger() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Dico_IteratorOfDictionaryOfInteger\n");}
	}
};