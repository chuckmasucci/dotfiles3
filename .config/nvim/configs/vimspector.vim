let g:vimspector_sidebar_width = 80
let g:vimspector_code_minwidth = 85
let g:vimspector_terminal_minwidth = 75
let g:vimspector_enable_mappings = 'HUMAN'

sign define vimspectorBP text=o          texthl=WarningMsg
sign define vimspectorBPCond text=o?     texthl=WarningMsg
sign define vimspectorBPDisabled text=o! texthl=LineNr
sign define vimspectorPC text=\ >        texthl=MatchParen
sign define vimspectorPCBP text=o>       texthl=MatchParen

let g:vimspector_sign_priority = {
  \    'vimspectorBP':         3,
  \    'vimspectorBPCond':     2,
  \    'vimspectorBPDisabled': 1,
  \    'vimspectorPC':         999,
  \ }
