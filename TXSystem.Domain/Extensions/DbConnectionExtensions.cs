using System.Data;
using Dapper;

namespace TXSystem.Domain.Extensions;

public static class DbConnectionExtensions
{
    public static async Task ExecuteManyAsync(this IDbConnection db, string sql, IDbTransaction? transaction = null)
    {
        if (string.IsNullOrWhiteSpace(sql))
            throw new ArgumentNullException(nameof(sql));

        var queries = sql.Split("\ngo\n").Where(s => !string.IsNullOrWhiteSpace(s));
        await db.ExecuteManyAsync(queries, transaction);
    }

    public static async Task ExecuteManyAsync(this IDbConnection db, IEnumerable<string> queries, IDbTransaction? transaction = null)
    {
        foreach (string sql in queries)
        {
            await db.ExecuteAsync(sql, transaction: transaction);
        }
    }
}