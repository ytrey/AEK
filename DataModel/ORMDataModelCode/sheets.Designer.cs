﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
using System;
using DevExpress.Xpo;
using DevExpress.Data.Filtering;
using System.Collections.Generic;
using System.ComponentModel;
namespace DXWebApplication1.DataModel.KUTA_ECA
{

    public partial class sheets : XPLiteObject
    {
        string fsheet_id;
        [Key]
        public string sheet_id
        {
            get { return fsheet_id; }
            set { SetPropertyValue<string>("sheet_id", ref fsheet_id, value); }
        }
        int fsheet_number;
        public int sheet_number
        {
            get { return fsheet_number; }
            set { SetPropertyValue<int>("sheet_number", ref fsheet_number, value); }
        }
        string fprefix;
        public string prefix
        {
            get { return fprefix; }
            set { SetPropertyValue<string>("prefix", ref fprefix, value); }
        }
        string ffile_name;
        public string file_name
        {
            get { return ffile_name; }
            set { SetPropertyValue<string>("file_name", ref ffile_name, value); }
        }
        source fbook_id;
        [Association(@"sheetsReferencessource")]
        public source book_id
        {
            get { return fbook_id; }
            set { SetPropertyValue<source>("book_id", ref fbook_id, value); }
        }
        picket fpicket_beg_id;
        [Association(@"sheetsReferencespicket")]
        public picket picket_beg_id
        {
            get { return fpicket_beg_id; }
            set { SetPropertyValue<picket>("picket_beg_id", ref fpicket_beg_id, value); }
        }
        picket fpicket_end_id;
        [Association(@"sheetsReferencespicket1")]
        public picket picket_end_id
        {
            get { return fpicket_end_id; }
            set { SetPropertyValue<picket>("picket_end_id", ref fpicket_end_id, value); }
        }
        decimal fofst_beg;
        public decimal ofst_beg
        {
            get { return fofst_beg; }
            set { SetPropertyValue<decimal>("ofst_beg", ref fofst_beg, value); }
        }
        decimal fofst_end;
        public decimal ofst_end
        {
            get { return fofst_end; }
            set { SetPropertyValue<decimal>("ofst_end", ref fofst_end, value); }
        }
        string fdescription;
        public string description
        {
            get { return fdescription; }
            set { SetPropertyValue<string>("description", ref fdescription, value); }
        }
        [PersistentAlias("[book_id].[book_type_id]")]
        public string type_name
        {
            get { return (string)(EvaluateAlias("type_name")); }
        }
        [PersistentAlias("[book_id].[book_number]")]
        public string book_number
        {
            get { return (string)(EvaluateAlias("book_number")); }
        }
        string fdoc_type;
        public string doc_type
        {
            get { return fdoc_type; }
            set { SetPropertyValue<string>("doc_type", ref fdoc_type, value); }
        }
        [Association(@"biasReferencessheets")]
        public XPCollection<bias> biasCollection { get { return GetCollection<bias>("biasCollection"); } }
        [Association(@"turning_anglesReferencessheets")]
        public XPCollection<turning_angles> turning_angless { get { return GetCollection<turning_angles>("turning_angless"); } }
        [Association(@"uzaReferencessheets")]
        public XPCollection<uza> uzas { get { return GetCollection<uza>("uzas"); } }
        [Association(@"valvesReferencessheets")]
        public XPCollection<valves> valvesCollection { get { return GetCollection<valves>("valvesCollection"); } }
        [Association(@"high_pointReferencessheets")]
        public XPCollection<high_point> high_points { get { return GetCollection<high_point>("high_points"); } }
    }

}