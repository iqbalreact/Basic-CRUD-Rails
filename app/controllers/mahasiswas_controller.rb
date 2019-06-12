class MahasiswasController < ApplicationController
  def index
    @mahasiswas = Mahasiswa.all
  end

  def show
    @mahasiswa = Mahasiswa.find(params[:id])
  end

  def new
    @mahasiswa = Mahasiswa.new
  end
  
  def create
    mahasiswa = Mahasiswa.create(mahasiswa_params)
    redirect_to mahasiswa_path 
  end

  private
  def mahasiswa_params
    params.require(:mahasiswa).permit(:nama, :jurusan)  
  end

  def edit
  end
end
