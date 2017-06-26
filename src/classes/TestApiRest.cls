@RestResource(urlMapping='/testApiRest/*')
global class TestApiRest
{
    @HttpPost
    global static ResponseHandler POST()
    {
        ResponseHandler response = new ResponseHandler ();
        try
        {
            response.Status = 'Success';
            response.ErrorCode = null;
            response.Message = null;
        }
        catch(DmlException e)
        {
            response.ErrorCode = 'Oyecode - 0001';
            response.Status = 'error';
            response.Message = e.getMessage();
        }
        return response;
    }


    @HttpGet
    global static ResponseHandler GET()
    {
        ResponseHandler response = new ResponseHandler ();
        response.ErrorCode = 'OyeCode-0003';
        response.Status = 'error';
        response.Message = 'Fail : Ahh, Contact Not Found';

        return response;
    }



}