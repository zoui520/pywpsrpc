/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace etapi
{
    struct IRefreshEvents : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT BeforeRefresh(
            VARIANT_BOOL *Cancel /In,Out/) = 0;

        virtual HRESULT AfterRefresh(
            VARIANT_BOOL Success) = 0;

    };
};
