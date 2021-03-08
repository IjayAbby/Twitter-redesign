# frozen_string_literal: true
class DirectUploadFileInput < SimpleForm::Inputs::FileInput
  def input_html_options
    super.merge({ direct_upload: true })
  end
end
