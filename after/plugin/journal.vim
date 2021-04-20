if ! exists("g:journal_dir")
    let g:journal_dir = "~/Dropbox/org/journal/"
end

if ! exists("g:journal_new")
    let g:journal_new = "<C-c><C-j>"
end

if ! exists("g:journal_edit")
    let g:journal_edit = "<C-c><C-e>"
end

if ! exists("g:journal_toggle")
    let g:journal_toggle = "<C-c><C-c>"
end

if ! exists("g:journal_next")
    let g:journal_next = "<C-c><C-n>"
end

if ! exists("g:journal_prev")
    let g:journal_prev = "<C-c><C-p>"
end

if ! exists("g:journal_grep")
    let g:journal_grep = "<C-c><C-g>"
end

if ! exists("g:journal_tags")
    let g:journal_tags = "<C-c><C-t>"
end

if ! exists("g:journal_list")
    let g:journal_list = "<C-c><C-l>"
end

execute "nnoremap " . g:journal_new . " :JournalNew<cr>"
execute "nnoremap " . g:journal_edit . " :e " . g:journal_dir . "/"
execute "nnoremap " . g:journal_grep . " :JournalGrep "
execute "nnoremap " . g:journal_tags . " :JournalTags "
execute "nnoremap " . g:journal_list . " :JournalList<cr>"
au FileType markdown execute "nnoremap " . g:journal_toggle . " :JournalToggle<cr>"
au FileType markdown execute "inoremap " . g:journal_toggle . " <esc>:JournalToggle<cr>a"
au FileType markdown execute "nnoremap " . g:journal_next . " :JournalNext<cr>"
au FileType markdown execute "nnoremap " . g:journal_prev . " :JournalPrev<cr>"
