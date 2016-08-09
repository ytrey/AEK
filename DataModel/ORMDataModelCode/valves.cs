using System;
using DevExpress.Xpo;
using DevExpress.Data.Filtering;
using System.Collections.Generic;
using System.ComponentModel;
namespace DXWebApplication1.DataModel.KUTA_ECA
{

    public partial class valves
    {
        public valves(Session session) : base(session) { }
        public override void AfterConstruction() { base.AfterConstruction(); }
    }

}
