using System.Reflection;
using TXSystem.Domain.Models;

namespace TXSystem.Mvc.Controllers;

public static class TableUtility
{
    public static TableInfo PrepareViewModel(IEnumerable<object> source)
    {
        if (source is null)
            throw new ArgumentNullException(nameof(source));

        Type? sourceType = null;
        var table = new TableInfo();
        foreach (object item in source)
        {
            var curType = item.GetType();
            if (sourceType is null)
                sourceType = curType;
            else if (curType != sourceType)
                throw new ArgumentException("Type missmatch", nameof(source));

            table.Data.Add(item.GetType()
                .GetProperties(BindingFlags.Instance | BindingFlags.Public)
                .Select(prop => prop.GetValue(item, null)).ToArray());
        }

        table.Columns = sourceType!
            .GetProperties(BindingFlags.Instance | BindingFlags.Public)
            .Select(prop => prop.Name).ToArray();
        return table;
    }
}