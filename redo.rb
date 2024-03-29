# Autogenerated from a Treetop grammar. Edits may be lost.


module Todo
  include Treetop::Runtime

  def root
    @root ||= :todo
  end

  module Todo0
			def value
				elements[0].value
			end
  end

  def _nt_todo
    start_index = index
    if node_cache[:todo].has_key?(index)
      cached = node_cache[:todo][index]
      if cached
        cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    s0, i0 = [], index
    loop do
      r1 = _nt_bash_style_comment
      if r1
        s0 << r1
      else
        break
      end
    end
    r0 = instantiate_node(SyntaxNode,input, i0...index, s0)
    r0.extend(Todo0)

    node_cache[:todo][start_index] = r0

    r0
  end

  module BashStyleComment0
    def todo_tag
      elements[1]
    end

    def space
      elements[2]
    end

    def todo_text
      elements[3]
    end
  end

  module BashStyleComment1
    def space1
      elements[1]
    end

    def todo_tag
      elements[2]
    end

    def space2
      elements[3]
    end

    def todo_text
      elements[4]
    end
  end

  module BashStyleComment2
    def todo_tag
      elements[2]
    end

    def space
      elements[3]
    end

    def todo_text
      elements[4]
    end
  end

  module BashStyleComment3
    def space1
      elements[2]
    end

    def todo_tag
      elements[3]
    end

    def space2
      elements[4]
    end

    def todo_text
      elements[5]
    end
  end

  module BashStyleComment4
		 	def value
		 		elements.last.value
		 	end
  end

  def _nt_bash_style_comment
    start_index = index
    if node_cache[:bash_style_comment].has_key?(index)
      cached = node_cache[:bash_style_comment][index]
      if cached
        cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    i0 = index
    i1, s1 = index, []
    if has_terminal?('#', false, index)
      r2 = instantiate_node(SyntaxNode,input, index...(index + 1))
      @index += 1
    else
      terminal_parse_failure('#')
      r2 = nil
    end
    s1 << r2
    if r2
      r3 = _nt_todo_tag
      s1 << r3
      if r3
        r4 = _nt_space
        s1 << r4
        if r4
          r5 = _nt_todo_text
          s1 << r5
        end
      end
    end
    if s1.last
      r1 = instantiate_node(SyntaxNode,input, i1...index, s1)
      r1.extend(BashStyleComment0)
    else
      @index = i1
      r1 = nil
    end
    if r1
      r0 = r1
      r0.extend(BashStyleComment4)
    else
      i6, s6 = index, []
      if has_terminal?('#', false, index)
        r7 = instantiate_node(SyntaxNode,input, index...(index + 1))
        @index += 1
      else
        terminal_parse_failure('#')
        r7 = nil
      end
      s6 << r7
      if r7
        r8 = _nt_space
        s6 << r8
        if r8
          r9 = _nt_todo_tag
          s6 << r9
          if r9
            r10 = _nt_space
            s6 << r10
            if r10
              r11 = _nt_todo_text
              s6 << r11
            end
          end
        end
      end
      if s6.last
        r6 = instantiate_node(SyntaxNode,input, i6...index, s6)
        r6.extend(BashStyleComment1)
      else
        @index = i6
        r6 = nil
      end
      if r6
        r0 = r6
        r0.extend(BashStyleComment4)
      else
        i12, s12 = index, []
        i13 = index
        r14 = _nt_tab
        if r14
          r13 = r14
        else
          r15 = _nt_space
          if r15
            r13 = r15
          else
            @index = i13
            r13 = nil
          end
        end
        s12 << r13
        if r13
          if has_terminal?('#', false, index)
            r16 = instantiate_node(SyntaxNode,input, index...(index + 1))
            @index += 1
          else
            terminal_parse_failure('#')
            r16 = nil
          end
          s12 << r16
          if r16
            r17 = _nt_todo_tag
            s12 << r17
            if r17
              r18 = _nt_space
              s12 << r18
              if r18
                r19 = _nt_todo_text
                s12 << r19
              end
            end
          end
        end
        if s12.last
          r12 = instantiate_node(SyntaxNode,input, i12...index, s12)
          r12.extend(BashStyleComment2)
        else
          @index = i12
          r12 = nil
        end
        if r12
          r0 = r12
          r0.extend(BashStyleComment4)
        else
          i20, s20 = index, []
          i21 = index
          r22 = _nt_tab
          if r22
            r21 = r22
          else
            r23 = _nt_space
            if r23
              r21 = r23
            else
              @index = i21
              r21 = nil
            end
          end
          s20 << r21
          if r21
            if has_terminal?('#', false, index)
              r24 = instantiate_node(SyntaxNode,input, index...(index + 1))
              @index += 1
            else
              terminal_parse_failure('#')
              r24 = nil
            end
            s20 << r24
            if r24
              r25 = _nt_space
              s20 << r25
              if r25
                r26 = _nt_todo_tag
                s20 << r26
                if r26
                  r27 = _nt_space
                  s20 << r27
                  if r27
                    r28 = _nt_todo_text
                    s20 << r28
                  end
                end
              end
            end
          end
          if s20.last
            r20 = instantiate_node(SyntaxNode,input, i20...index, s20)
            r20.extend(BashStyleComment3)
          else
            @index = i20
            r20 = nil
          end
          if r20
            r0 = r20
            r0.extend(BashStyleComment4)
          else
            @index = i0
            r0 = nil
          end
        end
      end
    end

    node_cache[:bash_style_comment][start_index] = r0

    r0
  end

  module TodoTag0
  end

  def _nt_todo_tag
    start_index = index
    if node_cache[:todo_tag].has_key?(index)
      cached = node_cache[:todo_tag][index]
      if cached
        cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    i0, s0 = index, []
    i1 = index
    if has_terminal?('TODO', false, index)
      r2 = instantiate_node(SyntaxNode,input, index...(index + 4))
      @index += 4
    else
      terminal_parse_failure('TODO')
      r2 = nil
    end
    if r2
      r1 = r2
    else
      if has_terminal?('Todo', false, index)
        r3 = instantiate_node(SyntaxNode,input, index...(index + 4))
        @index += 4
      else
        terminal_parse_failure('Todo')
        r3 = nil
      end
      if r3
        r1 = r3
      else
        if has_terminal?('todo', false, index)
          r4 = instantiate_node(SyntaxNode,input, index...(index + 4))
          @index += 4
        else
          terminal_parse_failure('todo')
          r4 = nil
        end
        if r4
          r1 = r4
        else
          @index = i1
          r1 = nil
        end
      end
    end
    s0 << r1
    if r1
      if has_terminal?(':', false, index)
        r6 = instantiate_node(SyntaxNode,input, index...(index + 1))
        @index += 1
      else
        terminal_parse_failure(':')
        r6 = nil
      end
      if r6
        r5 = r6
      else
        r5 = instantiate_node(SyntaxNode,input, index...index)
      end
      s0 << r5
    end
    if s0.last
      r0 = instantiate_node(SyntaxNode,input, i0...index, s0)
      r0.extend(TodoTag0)
    else
      @index = i0
      r0 = nil
    end

    node_cache[:todo_tag][start_index] = r0

    r0
  end

  module HtmlStyleComment0
    def open_html_tag
      elements[0]
    end

    def text
      elements[1]
    end

    def close_html_tag
      elements[2]
    end
  end

  def _nt_html_style_comment
    start_index = index
    if node_cache[:html_style_comment].has_key?(index)
      cached = node_cache[:html_style_comment][index]
      if cached
        cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    i0, s0 = index, []
    r1 = _nt_open_html_tag
    s0 << r1
    if r1
      r2 = _nt_text
      s0 << r2
      if r2
        r3 = _nt_close_html_tag
        s0 << r3
      end
    end
    if s0.last
      r0 = instantiate_node(SyntaxNode,input, i0...index, s0)
      r0.extend(HtmlStyleComment0)
    else
      @index = i0
      r0 = nil
    end

    node_cache[:html_style_comment][start_index] = r0

    r0
  end

  def _nt_open_html_tag
    start_index = index
    if node_cache[:open_html_tag].has_key?(index)
      cached = node_cache[:open_html_tag][index]
      if cached
        cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    if has_terminal?('<!--', false, index)
      r0 = instantiate_node(SyntaxNode,input, index...(index + 4))
      @index += 4
    else
      terminal_parse_failure('<!--')
      r0 = nil
    end

    node_cache[:open_html_tag][start_index] = r0

    r0
  end

  def _nt_close_html_tag
    start_index = index
    if node_cache[:close_html_tag].has_key?(index)
      cached = node_cache[:close_html_tag][index]
      if cached
        cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    if has_terminal?('-->', false, index)
      r0 = instantiate_node(SyntaxNode,input, index...(index + 3))
      @index += 3
    else
      terminal_parse_failure('-->')
      r0 = nil
    end

    node_cache[:close_html_tag][start_index] = r0

    r0
  end

  module TodoText0
			def value
				text_value
			end
  end

  def _nt_todo_text
    start_index = index
    if node_cache[:todo_text].has_key?(index)
      cached = node_cache[:todo_text][index]
      if cached
        cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    s0, i0 = [], index
    loop do
      if index < input_length
        r1 = instantiate_node(SyntaxNode,input, index...(index + 1))
        @index += 1
      else
        terminal_parse_failure("any character")
        r1 = nil
      end
      if r1
        s0 << r1
      else
        break
      end
    end
    r0 = instantiate_node(SyntaxNode,input, i0...index, s0)
    r0.extend(TodoText0)

    node_cache[:todo_text][start_index] = r0

    r0
  end

  def _nt_space
    start_index = index
    if node_cache[:space].has_key?(index)
      cached = node_cache[:space][index]
      if cached
        cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    s0, i0 = [], index
    loop do
      if has_terminal?(' ', false, index)
        r1 = instantiate_node(SyntaxNode,input, index...(index + 1))
        @index += 1
      else
        terminal_parse_failure(' ')
        r1 = nil
      end
      if r1
        s0 << r1
      else
        break
      end
    end
    r0 = instantiate_node(SyntaxNode,input, i0...index, s0)

    node_cache[:space][start_index] = r0

    r0
  end

  def _nt_tab
    start_index = index
    if node_cache[:tab].has_key?(index)
      cached = node_cache[:tab][index]
      if cached
        cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    s0, i0 = [], index
    loop do
      if has_terminal?('\G[\\t]', true, index)
        r1 = true
        @index += 1
      else
        r1 = nil
      end
      if r1
        s0 << r1
      else
        break
      end
    end
    r0 = instantiate_node(SyntaxNode,input, i0...index, s0)

    node_cache[:tab][start_index] = r0

    r0
  end

end

class TodoParser < Treetop::Runtime::CompiledParser
  include Todo
end

