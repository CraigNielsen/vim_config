
"py3 << EOL
"import vim, io,sys
"def PyExecReplace(line1,line2):
  "print(line1, line2)
  "r = vim.current.buffer.range(int(line1),int(line2))

  "buf = vim.current.buffer
  "(lnum1, col1) = buf.mark('<')
  "(lnum2, col2) = buf.mark('>')
  "lines = vim.eval('getline({}, {})'.format(lnum1, lnum2))
  "lines[0] = lines[0][col1:]
  "lines[-1] = lines[-1][:col2]
  "lines ="\n".join(lines)
  "print(lines)
  "print(vim.current.__dir__())
  "print(dir(r))
  "print(vim.current.buffer.name)
  "print(dir(vim.current))
  "#vim.current.line = 'yoyo'
  "#r[:] = output[:] # the -1 is to remove the final blank line
  "#redirected.close()
"EOL

"command -range PP python3 PyExecReplace(<f-line1>,<f-line2>)

"py3 << EOL
"import vim, io,sys
"def Test(line1,line2):
  "print('testing')
  "buf = vim.current.buffer
  "print()
  "print(vim.current.__dir__())
  "(lnum1, col1) = buf.mark('<')
  "(lnum2, col2) = buf.mark('>')
  "lines = vim.eval('getline({}, {})'.format(lnum1, lnum2))
  "lines[0] = lines[0][col1:]
  "lines[-1] = lines[-1][:col2]
  "lines ="\n".join(lines)

  "from vim_helpers import generate_factory_for_django_model_lines, save_to_end_of_relative_path_file
  "#  from vim_helpers._factory_generator import iterate, get_factory_template,\
  "#    map_to_default, generate_factory_for_django_model_lines, get_sql_alchemy_default_for_type,extract_class_name, \

  "edited_lines = generate_factory_for_django_model_lines(lines)
  "path = vim.current.buffer.name
  "save_to_end_of_relative_path_file(path, 'factories.py', edited_lines)

"EOL

"command! -range Makefactory python3 Test(<f-line1>,<f-line2>)

"py3 << EOL

"import vim, io,sys
"def ToAPIView(line1,line2):
  "print("wtf")
  "buf = vim.current.buffer
  "(lnum1, col1) = buf.mark('<')
  "(lnum2, col2) = buf.mark('>')
  "lines = vim.eval('getline({}, {})'.format(lnum1, lnum2))
  "lines[0] = lines[0][col1:]
  "lines[-1] = lines[-1][:col2]
  "lines ="\n".join(lines)

  "from vim_helpers import generate_api_detail_view_for_django_model_lines, save_to_end_of_relative_path_file, generate_serializer_for_detail_view_from_django_model_lines

  "edited_lines = generate_api_detail_view_for_django_model_lines(lines)
  "serializer = generate_serializer_for_detail_view_from_django_model_lines(lines)
  "path = vim.current.buffer.name
  "save_to_end_of_relative_path_file(path, 'api.py', edited_lines)
  "print(serializer)
  "save_to_end_of_relative_path_file(path, 'serializers.py', serializer)

"EOL

"command! -range MakeDetailView python3 ToAPIView(<f-line1>,<f-line2>)

