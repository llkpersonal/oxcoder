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
	public partial class OXStatusDataContext : System.Data.Linq.DataContext
	{
		
		private static System.Data.Linq.Mapping.MappingSource mappingSource = new AttributeMappingSource();
		
    #region 可扩展性方法定义
    partial void OnCreated();
    partial void Insertox_status(ox_status instance);
    partial void Updateox_status(ox_status instance);
    partial void Deleteox_status(ox_status instance);
    #endregion
		
		public OXStatusDataContext() : 
				base(global::OXCoder.DBModel.Properties.Settings.Default.oxcoderdbConnectionString, mappingSource)
		{
			OnCreated();
		}
		
		public OXStatusDataContext(string connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public OXStatusDataContext(System.Data.IDbConnection connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public OXStatusDataContext(string connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public OXStatusDataContext(System.Data.IDbConnection connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public System.Data.Linq.Table<ox_status> ox_status
		{
			get
			{
				return this.GetTable<ox_status>();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.ox_status")]
	public partial class ox_status : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private string _statusid;
		
		private string _projectid;
		
		private string _status;
		
		private string _sourcecode;
		
		private System.Data.Linq.Binary _submittime;
		
		private System.Nullable<int> _time;
		
		private System.Nullable<int> _memory;
		
    #region 可扩展性方法定义
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnstatusidChanging(string value);
    partial void OnstatusidChanged();
    partial void OnprojectidChanging(string value);
    partial void OnprojectidChanged();
    partial void OnstatusChanging(string value);
    partial void OnstatusChanged();
    partial void OnsourcecodeChanging(string value);
    partial void OnsourcecodeChanged();
    partial void OnsubmittimeChanging(System.Data.Linq.Binary value);
    partial void OnsubmittimeChanged();
    partial void OntimeChanging(System.Nullable<int> value);
    partial void OntimeChanged();
    partial void OnmemoryChanging(System.Nullable<int> value);
    partial void OnmemoryChanged();
    #endregion
		
		public ox_status()
		{
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_statusid", DbType="NChar(255) NOT NULL", CanBeNull=false, IsPrimaryKey=true, UpdateCheck=UpdateCheck.Never)]
		public string statusid
		{
			get
			{
				return this._statusid;
			}
			set
			{
				if ((this._statusid != value))
				{
					this.OnstatusidChanging(value);
					this.SendPropertyChanging();
					this._statusid = value;
					this.SendPropertyChanged("statusid");
					this.OnstatusidChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_projectid", DbType="NChar(255)", UpdateCheck=UpdateCheck.Never)]
		public string projectid
		{
			get
			{
				return this._projectid;
			}
			set
			{
				if ((this._projectid != value))
				{
					this.OnprojectidChanging(value);
					this.SendPropertyChanging();
					this._projectid = value;
					this.SendPropertyChanged("projectid");
					this.OnprojectidChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_status", DbType="NVarChar(255)", UpdateCheck=UpdateCheck.Never)]
		public string status
		{
			get
			{
				return this._status;
			}
			set
			{
				if ((this._status != value))
				{
					this.OnstatusChanging(value);
					this.SendPropertyChanging();
					this._status = value;
					this.SendPropertyChanged("status");
					this.OnstatusChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_sourcecode", DbType="NVarChar(255)", UpdateCheck=UpdateCheck.Never)]
		public string sourcecode
		{
			get
			{
				return this._sourcecode;
			}
			set
			{
				if ((this._sourcecode != value))
				{
					this.OnsourcecodeChanging(value);
					this.SendPropertyChanging();
					this._sourcecode = value;
					this.SendPropertyChanged("sourcecode");
					this.OnsourcecodeChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_submittime", AutoSync=AutoSync.Always, DbType="rowversion", IsDbGenerated=true, IsVersion=true, UpdateCheck=UpdateCheck.Never)]
		public System.Data.Linq.Binary submittime
		{
			get
			{
				return this._submittime;
			}
			set
			{
				if ((this._submittime != value))
				{
					this.OnsubmittimeChanging(value);
					this.SendPropertyChanging();
					this._submittime = value;
					this.SendPropertyChanged("submittime");
					this.OnsubmittimeChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_time", DbType="Int", UpdateCheck=UpdateCheck.Never)]
		public System.Nullable<int> time
		{
			get
			{
				return this._time;
			}
			set
			{
				if ((this._time != value))
				{
					this.OntimeChanging(value);
					this.SendPropertyChanging();
					this._time = value;
					this.SendPropertyChanged("time");
					this.OntimeChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_memory", DbType="Int", UpdateCheck=UpdateCheck.Never)]
		public System.Nullable<int> memory
		{
			get
			{
				return this._memory;
			}
			set
			{
				if ((this._memory != value))
				{
					this.OnmemoryChanging(value);
					this.SendPropertyChanging();
					this._memory = value;
					this.SendPropertyChanged("memory");
					this.OnmemoryChanged();
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