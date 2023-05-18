# frozen_string_literal: true

class UploadTransactionFileController < ApplicationController
  def index; end

  def create
    file = params[:file]
    if file.present?
      CNAB::UploadFile.new(file).call
      CNAB::ProcessFileJob.perform_later(file.path)
      redirect_to transaction_index_path
    else
      redirect_to upload_transaction_file_index_path, alert: 'Selecione um arquivo'
    end
  end
end
