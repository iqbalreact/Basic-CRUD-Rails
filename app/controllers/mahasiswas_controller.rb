class MahasiswasController < ApplicationController
  def index
    @mahasiswas = Mahasiswa.all
  end

  def show
  end

  def new
  end

  def edit
  end
end
