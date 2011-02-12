
function! Rake_This_File()

  let rake_one_file_cmd = 'clear; rake one_file[' . @% . ']'
  exec '!' . rake_one_file_cmd

endfunction

" :map :rf :call Rake_This_File()

