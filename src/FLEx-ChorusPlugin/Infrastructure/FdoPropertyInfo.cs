﻿using System;

namespace FLEx_ChorusPlugin.Infrastructure
{
	/// <summary>
	/// Property information for an FDO property.
	/// </summary>
	internal sealed class FdoPropertyInfo
	{
		/// <summary>
		/// Get the name of the property.
		/// </summary>
		internal string PropertyName { get; private set; }

		/// <summary>
		/// Get the data type of the property.
		/// </summary>
		internal DataType DataType { get; private set; }

		/// <summary>
		/// See if the property is custom or standard.
		/// </summary>
		internal bool IsCustomProperty { get; private set; }

		/// <summary>
		/// Constructor.
		/// </summary>
		internal FdoPropertyInfo(string propertyName, DataType dataType)
			: this(propertyName, dataType, false)
		{
		}

		/// <summary>
		/// Constructor.
		/// </summary>
		internal FdoPropertyInfo(string propertyName, DataType dataType, bool isCustomProperty)
		{
			PropertyName = propertyName;
			DataType = dataType;
			IsCustomProperty = isCustomProperty;
		}

		/// <summary>
		/// Constructor.
		/// </summary>
		internal FdoPropertyInfo(string propertyName, string dataType, bool isCustomProperty)
			: this(propertyName, (DataType)Enum.Parse(typeof(DataType), dataType), isCustomProperty)
		{
		}

		/// <summary>
		/// Constructor.
		/// </summary>
		internal FdoPropertyInfo(string propertyName, string dataType)
			: this(propertyName, (DataType)Enum.Parse(typeof(DataType), dataType), false)
		{
		}

		public override string ToString()
		{
			return string.Format("{0}: {1}: {2}", PropertyName, DataType, IsCustomProperty);
		}
	}
}