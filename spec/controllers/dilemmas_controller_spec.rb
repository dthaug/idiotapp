require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe DilemmasController do

  # This should return the minimal set of attributes required to create a valid
  # Dilemma. As you add validations to Dilemma, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "Description" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # DilemmasController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all dilemmas as @dilemmas" do
      dilemma = Dilemma.create! valid_attributes
      get :index, {}, valid_session
      assigns(:dilemmas).should eq([dilemma])
    end
  end

  describe "GET show" do
    it "assigns the requested dilemma as @dilemma" do
      dilemma = Dilemma.create! valid_attributes
      get :show, {:id => dilemma.to_param}, valid_session
      assigns(:dilemma).should eq(dilemma)
    end
  end

  describe "GET new" do
    it "assigns a new dilemma as @dilemma" do
      get :new, {}, valid_session
      assigns(:dilemma).should be_a_new(Dilemma)
    end
  end

  describe "GET edit" do
    it "assigns the requested dilemma as @dilemma" do
      dilemma = Dilemma.create! valid_attributes
      get :edit, {:id => dilemma.to_param}, valid_session
      assigns(:dilemma).should eq(dilemma)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Dilemma" do
        expect {
          post :create, {:dilemma => valid_attributes}, valid_session
        }.to change(Dilemma, :count).by(1)
      end

      it "assigns a newly created dilemma as @dilemma" do
        post :create, {:dilemma => valid_attributes}, valid_session
        assigns(:dilemma).should be_a(Dilemma)
        assigns(:dilemma).should be_persisted
      end

      it "redirects to the created dilemma" do
        post :create, {:dilemma => valid_attributes}, valid_session
        response.should redirect_to(Dilemma.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved dilemma as @dilemma" do
        # Trigger the behavior that occurs when invalid params are submitted
        Dilemma.any_instance.stub(:save).and_return(false)
        post :create, {:dilemma => { "Description" => "invalid value" }}, valid_session
        assigns(:dilemma).should be_a_new(Dilemma)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Dilemma.any_instance.stub(:save).and_return(false)
        post :create, {:dilemma => { "Description" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested dilemma" do
        dilemma = Dilemma.create! valid_attributes
        # Assuming there are no other dilemmas in the database, this
        # specifies that the Dilemma created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Dilemma.any_instance.should_receive(:update_attributes).with({ "Description" => "MyString" })
        put :update, {:id => dilemma.to_param, :dilemma => { "Description" => "MyString" }}, valid_session
      end

      it "assigns the requested dilemma as @dilemma" do
        dilemma = Dilemma.create! valid_attributes
        put :update, {:id => dilemma.to_param, :dilemma => valid_attributes}, valid_session
        assigns(:dilemma).should eq(dilemma)
      end

      it "redirects to the dilemma" do
        dilemma = Dilemma.create! valid_attributes
        put :update, {:id => dilemma.to_param, :dilemma => valid_attributes}, valid_session
        response.should redirect_to(dilemma)
      end
    end

    describe "with invalid params" do
      it "assigns the dilemma as @dilemma" do
        dilemma = Dilemma.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Dilemma.any_instance.stub(:save).and_return(false)
        put :update, {:id => dilemma.to_param, :dilemma => { "Description" => "invalid value" }}, valid_session
        assigns(:dilemma).should eq(dilemma)
      end

      it "re-renders the 'edit' template" do
        dilemma = Dilemma.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Dilemma.any_instance.stub(:save).and_return(false)
        put :update, {:id => dilemma.to_param, :dilemma => { "Description" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested dilemma" do
      dilemma = Dilemma.create! valid_attributes
      expect {
        delete :destroy, {:id => dilemma.to_param}, valid_session
      }.to change(Dilemma, :count).by(-1)
    end

    it "redirects to the dilemmas list" do
      dilemma = Dilemma.create! valid_attributes
      delete :destroy, {:id => dilemma.to_param}, valid_session
      response.should redirect_to(dilemmas_url)
    end
  end

end
