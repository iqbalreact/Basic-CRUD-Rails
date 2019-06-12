class MahasiswasController < ApplicationController

  # Menampilkan seluruh data mahasiswa
  def index
    @mahasiswas = Mahasiswa.all
  end

  # Menampilkan data mahasiswa yang dipilih
  def show
    @mahasiswa = Mahasiswa.find(params[:id])
  end
  
  # menampilkan form untuk menambahkan mahasiswa
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
      # kembali kehalaman form tambah mahasiswa
    end
  
  end

  #menampilkan data mahasiswa yang akan di edit ke form
  def edit
    @mahasiswa = Mahasiswa.find(params[:id])
  end
  
  #menyimpan data mahasiswa yang telah diedit
  def update
    @mahasiswa = Mahasiswa.find(params[:id])

    if @mahasiswa.update(mahasiswa_params)   
      redirect_to mahasiswas_path
    else
      render 'edit'
      # kembali kehalaman edit mahasiswa
    end

  end

  # menghapus data mahasiswa yang dipilih
  def destroy
    @mahasiswa = Mahasiswa.find(params[:id])
    @mahasiswa.destroy
    
    redirect_to mahasiswas_path
  end

  private
  def mahasiswa_params
    params.require(:mahasiswa).permit(:nama, :jurusan)  
  end

end
