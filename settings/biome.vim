augroup vim_lsp_settings_biome
  au!
  LspRegisterServer {
      \ 'name': 'biome',
      \ 'cmd': {server_info->lsp_settings#get('biome', 'cmd', [lsp_settings#exec_path('biome')]+lsp_settings#get('biome', 'args', ['lsp-proxy']))},
      \ 'root_uri':{server_info->lsp#utils#path_to_uri(lsp#utils#find_nearest_parent_file_directory(lsp#utils#get_buffer_path(), '.config/'))},
      \ 'initialization_options': lsp_settings#get('biome', 'initialization_options', {}),
      \ 'allowlist': lsp_settings#get('biome', 'allowlist', ['javascript', 'javascriptreact', 'typescript', 'typescriptreact', 'typescript.tsx', 'json']),
      \ 'blocklist': lsp_settings#get('biome', 'blocklist', []),
      \ 'config': lsp_settings#get('biome', 'config', {}),
      \ 'workspace_config': lsp_settings#get('biome', 'workspace_config', {}),
      \ 'semantic_highlight': lsp_settings#get('biome', 'semantic_highlight', {}),
      \}
augroup END
