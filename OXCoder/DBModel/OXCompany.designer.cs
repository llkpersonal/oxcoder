﻿#pragma warning disable 1591
//------------------------------------------------------------------------------
// <auto-generated>
//     此代码由工具生成。
//     运行时版本:4.0.30319.34014
//
//     对此文件的更改可能会导致不正确的行为，并且如果
//     重新生成代码，这些更改将会丢失。
// </auto-generated>
//------------------------------------------------------------------------------

namespace OXCoder.DBModel
{
	using System.Data.Linq;
	using System.Data.Linq.Mapping;
	using System.Data;
	using System.Collections.Generic;
	using System.Reflection;
	using System.Linq;
	using System.Linq.Expressions;
	using System.ComponentModel;
	using System;
	
	
	[global::System.Data.Linq.Mapping.DatabaseAttribute(Name="oxcoderdb")]
	public partial class OXCompanyDataContext : System.Data.Linq.DataContext
	{
		
		private static System.Data.Linq.Mapping.MappingSource mappingSource = new AttributeMappingSource();
		
    #region 可扩展性方法定义
    partial void OnCreated();
    partial void Insertox_company(ox_company instance);
    partial void Updateox_company(ox_company instance);
    partial void Deleteox_company(ox_company instance);
    #endregion
		
		public OXCompanyDataContext() : 
				base(global::OXCoder.DBModel.Properties.Settings.Default.oxcoderdbConnectionString1, mappingSource)
		{
			OnCreated();
		}
		
		public OXCompanyDataContext(string connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public OXCompanyDataContext(System.Data.IDbConnection connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public OXCompanyDataContext(string connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public OXCompanyDataContext(System.Data.IDbConnection connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public System.Data.Linq.Table<ox_company> ox_companies
		{
			get
			{
				return this.GetTable<ox_company>();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.ox_company")]
	public partial class ox_company : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private string _companyname;
		
		private string _briefname;
		
		private string _logo;
		
		private string _website;
		
		private string _province;
		
		private string _city;
		
		private string _size;
		
		private string _description;
		
		private string _tag;
		
		private int _userid;
		
		private string _provefile;
		
		private string _telephone;
		
    #region 可扩展性方法定义
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OncompanynameChanging(string value);
    partial void OncompanynameChanged();
    partial void OnbriefnameChanging(string value);
    partial void OnbriefnameChanged();
    partial void OnlogoChanging(string value);
    partial void OnlogoChanged();
    partial void OnwebsiteChanging(string value);
    partial void OnwebsiteChanged();
    partial void OnprovinceChanging(string value);
    partial void OnprovinceChanged();
    partial void OncityChanging(string value);
    partial void OncityChanged();
    partial void OnsizeChanging(string value);
    partial void OnsizeChanged();
    partial void OndescriptionChanging(string value);
    partial void OndescriptionChanged();
    partial void OntagChanging(string value);
    partial void OntagChanged();
    partial void OnuseridChanging(int value);
    partial void OnuseridChanged();
    partial void OnprovefileChanging(string value);
    partial void OnprovefileChanged();
    partial void OntelephoneChanging(string value);
    partial void OntelephoneChanged();
    #endregion
		
		public ox_company()
		{
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_companyname", DbType="NVarChar(MAX)")]
		public string companyname
		{
			get
			{
				return this._companyname;
			}
			set
			{
				if ((this._companyname != value))
				{
					this.OncompanynameChanging(value);
					this.SendPropertyChanging();
					this._companyname = value;
					this.SendPropertyChanged("companyname");
					this.OncompanynameChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_briefname", DbType="NVarChar(MAX)")]
		public string briefname
		{
			get
			{
				return this._briefname;
			}
			set
			{
				if ((this._briefname != value))
				{
					this.OnbriefnameChanging(value);
					this.SendPropertyChanging();
					this._briefname = value;
					this.SendPropertyChanged("briefname");
					this.OnbriefnameChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_logo", DbType="NVarChar(MAX)")]
		public string logo
		{
			get
			{
				return this._logo;
			}
			set
			{
				if ((this._logo != value))
				{
					this.OnlogoChanging(value);
					this.SendPropertyChanging();
					this._logo = value;
					this.SendPropertyChanged("logo");
					this.OnlogoChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_website", DbType="NVarChar(MAX)")]
		public string website
		{
			get
			{
				return this._website;
			}
			set
			{
				if ((this._website != value))
				{
					this.OnwebsiteChanging(value);
					this.SendPropertyChanging();
					this._website = value;
					this.SendPropertyChanged("website");
					this.OnwebsiteChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_province", DbType="NVarChar(MAX)")]
		public string province
		{
			get
			{
				return this._province;
			}
			set
			{
				if ((this._province != value))
				{
					this.OnprovinceChanging(value);
					this.SendPropertyChanging();
					this._province = value;
					this.SendPropertyChanged("province");
					this.OnprovinceChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_city", DbType="NVarChar(MAX)")]
		public string city
		{
			get
			{
				return this._city;
			}
			set
			{
				if ((this._city != value))
				{
					this.OncityChanging(value);
					this.SendPropertyChanging();
					this._city = value;
					this.SendPropertyChanged("city");
					this.OncityChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_size", DbType="NVarChar(MAX)")]
		public string size
		{
			get
			{
				return this._size;
			}
			set
			{
				if ((this._size != value))
				{
					this.OnsizeChanging(value);
					this.SendPropertyChanging();
					this._size = value;
					this.SendPropertyChanged("size");
					this.OnsizeChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_description", DbType="Text", UpdateCheck=UpdateCheck.Never)]
		public string description
		{
			get
			{
				return this._description;
			}
			set
			{
				if ((this._description != value))
				{
					this.OndescriptionChanging(value);
					this.SendPropertyChanging();
					this._description = value;
					this.SendPropertyChanged("description");
					this.OndescriptionChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_tag", DbType="NVarChar(MAX)")]
		public string tag
		{
			get
			{
				return this._tag;
			}
			set
			{
				if ((this._tag != value))
				{
					this.OntagChanging(value);
					this.SendPropertyChanging();
					this._tag = value;
					this.SendPropertyChanged("tag");
					this.OntagChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_userid", DbType="Int NOT NULL", IsPrimaryKey=true)]
		public int userid
		{
			get
			{
				return this._userid;
			}
			set
			{
				if ((this._userid != value))
				{
					this.OnuseridChanging(value);
					this.SendPropertyChanging();
					this._userid = value;
					this.SendPropertyChanged("userid");
					this.OnuseridChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_provefile", DbType="NVarChar(MAX)")]
		public string provefile
		{
			get
			{
				return this._provefile;
			}
			set
			{
				if ((this._provefile != value))
				{
					this.OnprovefileChanging(value);
					this.SendPropertyChanging();
					this._provefile = value;
					this.SendPropertyChanged("provefile");
					this.OnprovefileChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_telephone", DbType="NVarChar(MAX)")]
		public string telephone
		{
			get
			{
				return this._telephone;
			}
			set
			{
				if ((this._telephone != value))
				{
					this.OntelephoneChanging(value);
					this.SendPropertyChanging();
					this._telephone = value;
					this.SendPropertyChanged("telephone");
					this.OntelephoneChanged();
				}
			}
		}
		
		public event PropertyChangingEventHandler PropertyChanging;
		
		public event PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			if ((this.PropertyChanging != null))
			{
				this.PropertyChanging(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(String propertyName)
		{
			if ((this.PropertyChanged != null))
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
	}
}
#pragma warning restore 1591
