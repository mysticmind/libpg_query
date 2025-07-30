Get-Content pg_query.h | ForEach-Object {
    if ($_ -match "pg_query_([a-zA-Z0-9_]+)\s*\(") {
        $fn = $matches[1]
        if ($fn -ne "pg_query_init") {
            "    $fn" >> "pg_query.def"
        }
    }
}
