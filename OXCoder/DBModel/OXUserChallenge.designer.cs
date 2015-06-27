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
	public partial class OXUserChallengeDataContext : System.Data.Linq.DataContext
	{
		
		private static System.Data.Linq.Mapping.MappingSource mappingSource = new AttributeMappingSource();
		
    #region 可扩展性方法定义
    partial void OnCreated();
    partial void Insertox_user_challenge(ox_user_challenge instance);
    partial void Updateox_user_challenge(ox_user_challenge instance);
    partial void Deleteox_user_challenge(ox_user_challenge instance);
    #endregion
		
		public OXUserChallengeDataContext() : 
				base(global::OXCoder.DBModel.Properties.Settings.Default.oxcoderdbConnectionString, mappingSource)
		{
			OnCreated();
		}
		
		public OXUserChallengeDataContext(string connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public OXUserChallengeDataContext(System.Data.IDbConnection connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public OXUserChallengeDataContext(string connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public OXUserChallengeDataContext(System.Data.IDbConnection connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public System.Data.Linq.Table<ox_user_challenge> ox_user_challenge
		{
			get
			{
				return this.GetTable<ox_user_challenge>();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.ox_user_challenge")]
	public partial class ox_user_challenge : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private int _ucid;
		
		private System.Nullable<int> _userid;
		
		private string _challengeid;
		
		private System.Nullable<int> _status;
		
		private System.Nullable<System.DateTime> _starttime;
		
		private System.Nullable<System.DateTime> _endtime;
		
    #region 可扩展性方法定义
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnucidChanging(int value);
    partial void OnucidChanged();
    partial void OnuseridChanging(System.Nullable<int> value);
    partial void OnuseridChanged();
    partial void OnchallengeidChanging(string value);
    partial void OnchallengeidChanged();
    partial void OnstatusChanging(System.Nullable<int> value);
    partial void OnstatusChanged();
    partial void OnstarttimeChanging(System.Nullable<System.DateTime> value);
    partial void OnstarttimeChanged();
    partial void OnendtimeChanging(System.Nullable<System.DateTime> value);
    partial void OnendtimeChanged();
    #endregion
		
		public ox_user_challenge()
		{
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_ucid", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
		public int ucid
		{
			get
			{
				return this._ucid;
			}
			set
			{
				if ((this._ucid != value))
				{
					this.OnucidChanging(value);
					this.SendPropertyChanging();
					this._ucid = value;
					this.SendPropertyChanged("ucid");
					this.OnucidChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_userid", DbType="Int")]
		public System.Nullable<int> userid
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
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_challengeid", DbType="NChar(36)")]
		public string challengeid
		{
			get
			{
				return this._challengeid;
			}
			set
			{
				if ((this._challengeid != value))
				{
					this.OnchallengeidChanging(value);
					this.SendPropertyChanging();
					this._challengeid = value;
					this.SendPropertyChanged("challengeid");
					this.OnchallengeidChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_status", DbType="Int")]
		public System.Nullable<int> status
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
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_starttime", DbType="DateTime")]
		public System.Nullable<System.DateTime> starttime
		{
			get
			{
				return this._starttime;
			}
			set
			{
				if ((this._starttime != value))
				{
					this.OnstarttimeChanging(value);
					this.SendPropertyChanging();
					this._starttime = value;
					this.SendPropertyChanged("starttime");
					this.OnstarttimeChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_endtime", DbType="DateTime")]
		public System.Nullable<System.DateTime> endtime
		{
			get
			{
				return this._endtime;
			}
			set
			{
				if ((this._endtime != value))
				{
					this.OnendtimeChanging(value);
					this.SendPropertyChanging();
					this._endtime = value;
					this.SendPropertyChanged("endtime");
					this.OnendtimeChanged();
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
