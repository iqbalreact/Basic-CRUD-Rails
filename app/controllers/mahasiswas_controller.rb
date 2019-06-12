class MahasiswasController < ApplicationController

  # Menampilkan seluruh data mahasiswa
  def index
    @mahasiswas = Mahasiswa.all
  end

  # Menampilkan data mahasiswa yang dipilih
  def show
    @mahasiswa = Mahasiswa.find(params[:id])
  end
  
  # menampilkan form untuk menambahkan mahasisa
  def new
    @mahasiswa = Mahasiswa.new
  end
  
  # menyimpan data mahasiswa baru menggunakan parameter
  def create
    @mahasiswa = Mahasiswa.new(mahasiswa_params)
    if @mahasiswa.save
      redirect_to mahasiswas_path
    else
      render 'new'
      # kembali kehalaman form tambah mahasiswa/
    end
  
  end

  def edit
  end

  private
  def mahasiswa_params
    params.require(:mahasiswa).permit(:nama, :jurusan)  
  end

end
