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

    public partial class source : XPLiteObject
    {
        string fbook_id;
        [Key]
        public string book_id
        {
            get { return fbook_id; }
            set { SetPropertyValue<string>("book_id", ref fbook_id, value); }
        }
        string fdescription;
        public string description
        {
            get { return fdescription; }
            set { SetPropertyValue<string>("description", ref fdescription, value); }
        }
        string fbook_number;
        public string book_number
        {
            get { return fbook_number; }
            set { SetPropertyValue<string>("book_number", ref fbook_number, value); }
        }
        string fbook_type_id;
        public string book_type_id
        {
            get { return fbook_type_id; }
            set { SetPropertyValue<string>("book_type_id", ref fbook_type_id, value); }
        }
        string fdoc_developer;
        public string doc_developer
        {
            get { return fdoc_developer; }
            set { SetPropertyValue<string>("doc_developer", ref fdoc_developer, value); }
        }
        string fdivision_id;
        public string division_id
        {
            get { return fdivision_id; }
            set { SetPropertyValue<string>("division_id", ref fdivision_id, value); }
        }
        string fdate1;
        public string date1
        {
            get { return fdate1; }
            set { SetPropertyValue<string>("date1", ref fdate1, value); }
        }
        string fdate2;
        public string date2
        {
            get { return fdate2; }
            set { SetPropertyValue<string>("date2", ref fdate2, value); }
        }
        string fdoc_dev;
        public string doc_dev
        {
            get { return fdoc_dev; }
            set { SetPropertyValue<string>("doc_dev", ref fdoc_dev, value); }
        }
        string flot;
        public string lot
        {
            get { return flot; }
            set { SetPropertyValue<string>("lot", ref flot, value); }
        }
        string fkilometr;
        public string kilometr
        {
            get { return fkilometr; }
            set { SetPropertyValue<string>("kilometr", ref fkilometr, value); }
        }
        string fsort_index;
        public string sort_index
        {
            get { return fsort_index; }
            set { SetPropertyValue<string>("sort_index", ref fsort_index, value); }
        }
        string fdoc_name;
        public string doc_name
        {
            get { return fdoc_name; }
            set { SetPropertyValue<string>("doc_name", ref fdoc_name, value); }
        }
        [Association(@"sheetsReferencessource")]
        public XPCollection<sheets> sheetsCollection { get { return GetCollection<sheets>("sheetsCollection"); } }
    }

}
