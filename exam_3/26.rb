# 半角スペース区切り + メソッド名またはシンボルまたはグローバル変数
alias new_method old_method
alias :new_method :old_method
alias $new_global_val $old_global_val

# カンマ区切り + シンボルまたは文字列
alias_method "new_method", "old_method"
alias_method :new_method, :old_method
