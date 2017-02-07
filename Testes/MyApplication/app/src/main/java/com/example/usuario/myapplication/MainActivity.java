package com.example.usuario.myapplication;

import android.app.Activity;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

import org.ksoap2.SoapEnvelope;
import org.ksoap2.serialization.SoapObject;
import org.ksoap2.serialization.SoapPrimitive;
import org.ksoap2.serialization.SoapSerializationEnvelope;
import org.ksoap2.transport.HttpTransportSE;

import java.util.concurrent.ExecutionException;

public class MainActivity extends AppCompatActivity {
    private Button btnConectar;
    private EditText txtLogin;
    private EditText txtSenha;
    protected String METHOD_NAME;
    protected static final String NAMESPACE = "http://tempuri.org/";
    String retornoWebService = "";

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        btnConectar = (Button) findViewById(R.id.btnConectar);
        txtLogin = (EditText) findViewById(R.id.txtLogin);
        txtSenha = (EditText) findViewById(R.id.txtSenha);

    }

    public void onClick(View v) {
        if (v == btnConectar)
        {
            METHOD_NAME = "validaUsuario";
            final SoapObject requisicao = new SoapObject(NAMESPACE, METHOD_NAME);

            requisicao.addProperty("usuario", txtLogin.getText().toString());
            requisicao.addProperty("senha", txtSenha.getText().toString());

            try {
                Thread thread =  new Thread( new Runnable()
                {

                    public void run()
                    {
                        retornoWebService = openConnection(METHOD_NAME, requisicao);
                    }
                });
                thread.start();

                thread.join();


            } catch (Exception e) {
                e.printStackTrace();
            }

            Toast.makeText(this, retornoWebService, Toast.LENGTH_LONG).show();
        }
    }

    public static String openConnection(String m, SoapObject r){
        String resposta;
        //
        //Create envelope
        SoapSerializationEnvelope envelope = new SoapSerializationEnvelope(SoapEnvelope.VER11);
        envelope.dotNet = true;
        //Set output SOAP object
        envelope.setOutputSoapObject(r);
        //Create HTTP call object
        HttpTransportSE androidHttpTransport = new HttpTransportSE("http://52.67.248.198/SiteTesteTcc/Service.asmx");
//        int TIMEOUT_MILLISEC = 120000;  // = 10 seconds
//        String postMessage="{}"; //HERE_YOUR_POST_STRING.
//        HttpParams httpParams = new BasicHttpParams();
//        HttpConnectionParams.setConnectionTimeout(httpParams, TIMEOUT_MILLISEC);
//        HttpConnectionParams.setSoTimeout(httpParams, TIMEOUT_MILLISEC);
        try
        {
            //Invoke web service
            androidHttpTransport.call(NAMESPACE + m, envelope);
//            String a = androidHttpTransport.requestDump; // string contendo a chamada
//            String b = androidHttpTransport.responseDump; // string contendo a resposta
            //Get the response
            SoapPrimitive response = (SoapPrimitive) envelope.getResponse();
            //Assign it to fahren static variable
            resposta = response.toString();

        } catch (Exception e) {
            e.printStackTrace();
            resposta = "@Erro entre aplicação e web Service";
        }
        return resposta;
    }
}
