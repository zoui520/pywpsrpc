/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace wpsapi
{
    struct Trendline : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Backward(
            double *prop /Out/) = 0;

        virtual HRESULT put_Backward(
            double prop) = 0;

        virtual HRESULT get_Border(
            ChartBorder **prop /Out/) = 0;

        virtual HRESULT ClearFormats(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT get_DataLabel(
            DataLabel **prop /Out/) = 0;

        virtual HRESULT Delete(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT get_DisplayEquation(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_DisplayEquation(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_DisplayRSquared(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_DisplayRSquared(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Forward(
            double *prop /Out/) = 0;

        virtual HRESULT put_Forward(
            double prop) = 0;

        virtual HRESULT get_Index(
            long *prop /Out/) = 0;

        virtual HRESULT get_Intercept(
            double *prop /Out/) = 0;

        virtual HRESULT put_Intercept(
            double prop) = 0;

        virtual HRESULT get_InterceptIsAuto(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_InterceptIsAuto(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Name(
            BSTR *prop /Out/) = 0;

        virtual HRESULT put_Name(
            BSTR prop) = 0;

        virtual HRESULT get_NameIsAuto(
            VARIANT_BOOL *prop /Out/) = 0;

        virtual HRESULT put_NameIsAuto(
            VARIANT_BOOL prop) = 0;

        virtual HRESULT get_Order(
            long *prop /Out/) = 0;

        virtual HRESULT put_Order(
            long prop) = 0;

        virtual HRESULT get_Period(
            long *prop /Out/) = 0;

        virtual HRESULT put_Period(
            long prop) = 0;

        virtual HRESULT Select(
            VARIANT *prop /Out/) = 0;

        virtual HRESULT get_Type(
            XlTrendlineType *prop /Out/) = 0;

        virtual HRESULT put_Type(
            XlTrendlineType prop) = 0;

        virtual HRESULT get_Format(
            ChartFormat **prop /Out/) = 0;

        virtual HRESULT get_Backward2(
            double *prop /Out/) = 0;

        virtual HRESULT put_Backward2(
            double prop) = 0;

        virtual HRESULT get_Forward2(
            double *prop /Out/) = 0;

        virtual HRESULT put_Forward2(
            double prop) = 0;

        double getBackward();
        %MethodCode
            double prop = 0;
            HRESULT hr = sipCpp->get_Backward(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Backward()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setBackward(double prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Backward(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Backward()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Backward, get=getBackward, set=setBackward)

        ChartBorder* getBorder();
        %MethodCode
            wpsapi::ChartBorder *prop = nullptr;
            HRESULT hr = sipCpp->get_Border(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Border()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Border, get=getBorder)

        DataLabel* getDataLabel();
        %MethodCode
            wpsapi::DataLabel *prop = nullptr;
            HRESULT hr = sipCpp->get_DataLabel(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DataLabel()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=DataLabel, get=getDataLabel)

        VARIANT_BOOL getDisplayEquation();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_DisplayEquation(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DisplayEquation()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDisplayEquation(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DisplayEquation(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DisplayEquation()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DisplayEquation, get=getDisplayEquation, set=setDisplayEquation)

        VARIANT_BOOL getDisplayRSquared();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_DisplayRSquared(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DisplayRSquared()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setDisplayRSquared(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_DisplayRSquared(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_DisplayRSquared()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=DisplayRSquared, get=getDisplayRSquared, set=setDisplayRSquared)

        double getForward();
        %MethodCode
            double prop = 0;
            HRESULT hr = sipCpp->get_Forward(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Forward()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setForward(double prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Forward(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Forward()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Forward, get=getForward, set=setForward)

        long getIndex();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_Index(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Index()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Index, get=getIndex)

        double getIntercept();
        %MethodCode
            double prop = 0;
            HRESULT hr = sipCpp->get_Intercept(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Intercept()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setIntercept(double prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Intercept(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Intercept()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Intercept, get=getIntercept, set=setIntercept)

        VARIANT_BOOL getInterceptIsAuto();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_InterceptIsAuto(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_InterceptIsAuto()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setInterceptIsAuto(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_InterceptIsAuto(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_InterceptIsAuto()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=InterceptIsAuto, get=getInterceptIsAuto, set=setInterceptIsAuto)

        BSTR getName();
        %MethodCode
            BSTR *prop = new BSTR;
            HRESULT hr = sipCpp->get_Name(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Name()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setName(BSTR prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Name(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Name()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Name, get=getName, set=setName)

        VARIANT_BOOL getNameIsAuto();
        %MethodCode
            VARIANT_BOOL *prop = new VARIANT_BOOL;
            HRESULT hr = sipCpp->get_NameIsAuto(prop);
            if (hr != S_OK)
            {
                delete prop;
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_NameIsAuto()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setNameIsAuto(VARIANT_BOOL prop);
        %MethodCode
            HRESULT hr = sipCpp->put_NameIsAuto(*a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_NameIsAuto()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=NameIsAuto, get=getNameIsAuto, set=setNameIsAuto)

        long getOrder();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_Order(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Order()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setOrder(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Order(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Order()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Order, get=getOrder, set=setOrder)

        long getPeriod();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_Period(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Period()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setPeriod(long prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Period(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Period()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Period, get=getPeriod, set=setPeriod)

        XlTrendlineType getType();
        %MethodCode
            wpsapi::XlTrendlineType prop = (wpsapi::XlTrendlineType)0;
            HRESULT hr = sipCpp->get_Type(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Type()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setType(XlTrendlineType prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Type(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Type()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Type, get=getType, set=setType)

        ChartFormat* getFormat();
        %MethodCode
            wpsapi::ChartFormat *prop = nullptr;
            HRESULT hr = sipCpp->get_Format(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Format()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Format, get=getFormat)

        double getBackward2();
        %MethodCode
            double prop = 0;
            HRESULT hr = sipCpp->get_Backward2(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Backward2()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setBackward2(double prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Backward2(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Backward2()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Backward2, get=getBackward2, set=setBackward2)

        double getForward2();
        %MethodCode
            double prop = 0;
            HRESULT hr = sipCpp->get_Forward2(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Forward2()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setForward2(double prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Forward2(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Forward2()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Forward2, get=getForward2, set=setForward2)
    };
};
